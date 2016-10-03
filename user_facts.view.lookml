- view: user_facts
  derived_table:
    sql: |
      SELECT 
        rawdata.visitor_site_id AS visitor_site_id,
        MIN(rawdata.ts_action) AS first_action_date,
        COUNT(DISTINCT CONCAT(STRING(rawdata.session_id), '-', rawdata.visitor_site_id), 1000) AS rawdata_session_count
      FROM parsely.rawdata AS rawdata
      
      GROUP BY 1
      

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: visitor_site_id
    type: string
    primary_key: true
    hidden: true
    sql: ${TABLE}.visitor_site_id

  - dimension: first_action_date
    type: string
    sql: ${TABLE}.first_action_date

  - dimension: session_count
    type: number
    sql: ${TABLE}.rawdata_session_count
  
  - dimension: session_count_tier
    type: tier
    sql: ${session_count}
    tiers: [1,2,3]
    style: integer
  
  - measure: return_count
    type: count_distinct
    sql: ${visitor_site_id}
    filters: 
      session_count: ">=2"
    description: "Have returned to the site at least once"
  
  - measure: frequent_count
    type: count_distinct
    sql: ${visitor_site_id}
    filters: 
      session_count: '>=3'
    description: "Have returned to the site more than twice"

  sets:
    detail:
      - visitor_site_id
      - first_action_date
      - rawdata_session_count

