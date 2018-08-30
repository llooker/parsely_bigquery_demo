view: rawdata_date_array {
  derived_table: {
    sql: SELECT snapshot_date
      FROM UNNEST(GENERATE_DATE_ARRAY(
        PARSE_DATE("%F",(SELECT SUBSTR(MIN(ts_action),0,10) from parsely.rawdata))
        ,PARSE_DATE("%F",(SELECT SUBSTR(MAX(ts_action),0,10) from parsely.rawdata))
      )) AS snapshot_date
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: snapshot_date {
    type: date
    sql: ${TABLE}.snapshot_date ;;
  }

dimension_group: snapshot {
  type: time
  timeframes: [raw]
  sql: TIMESTAMP(${snapshot_date}) ;;
}

  set: detail {
    fields: [snapshot_date]
  }
}
