view: xtra_subscribers {
  sql_table_name: parsely.xtra_subscribers ;;

  dimension: annual_subscription {
    type: number
    sql: ${TABLE}.annual_subscription ;;
  }

  dimension: custom_subscriber_id {
    type: string
    sql: ${TABLE}.custom_subscriber_id ;;
  }

  dimension_group: subscriber_since {
    type: time
    sql: ${TABLE}.subscriber_since ;;
    timeframes: [time, month]
  }

  measure: subscribers {
    type: count_distinct
    sql: ${custom_subscriber_id} ;;
  }

  measure: record_count {
    type: count
    drill_fields: []
  }

  measure: subscriber_revenue {
    type: sum
    sql: ${annual_subscription} ;;
  }
}
