- view: xtra_domains
  sql_table_name: parsely.xtra_domains
  fields:

  - dimension: bu_id
    type: string
    sql: ${TABLE}.bu_id

  - dimension: bu_name
    type: string
    sql: ${TABLE}.bu_name

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: domain
    type: string
    sql: ${TABLE}.domain

  - dimension: domain_id
    type: string
    sql: ${TABLE}.domain_id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [bu_name, name]

