- view: xtra_adserver
  sql_table_name: parsely.xtra_adserver
  fields:

  - dimension: ad_revenue_per_1000
    type: number
    sql: ${TABLE}.ad_revenue_per_1000

  - dimension: ad_total_impressions
    type: number
    sql: ${TABLE}.ad_total_impressions

  - dimension: ad_viewable_impressions
    type: number
    sql: ${TABLE}.ad_viewable_impressions

  - dimension: metadata_canonical_url
    type: string
    sql: ${TABLE}.metadata_canonical_url

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

