- view: xtra_subscribers
  sql_table_name: parsely.xtra_subscribers
  fields:

  - dimension: annual_subscription
    type: number
    sql: ${TABLE}.annual_subscription

  - dimension: custom_subscriber_id
    type: string
    sql: ${TABLE}.custom_subscriber_id

  - dimension_group: subscriber_since
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.subscriber_since

  - measure: record_count
    type: count
    approximate_threshold: 100000
    drill_fields: []

  - measure: subscriber_revenue
    type: sum
    sql: ${annual_subscription}