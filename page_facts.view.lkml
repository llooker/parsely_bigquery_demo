view: page_facts {
  ## This derived table is to grab an accurate publish time for each canonical url.
  ## The logic can be replaced depending on how this is defined.
  ## In this case we are defining it as the time of the first pageview.
  derived_table: {
    sql: select
          metadata_canonical_url
        , min(ts_action) as publish_timestamp
      from rawdata
      where action = 'pageview'
      group by 1
       ;;
  }

  dimension: metadata_canonical_url {
    type: string
    primary_key: yes
    hidden:  yes
    sql: ${TABLE}.metadata_canonical_url ;;
  }

  dimension_group: publish {
    type: time
    sql: TIMESTAMP(${TABLE}.publish_timestamp) ;;
    timeframes: [time, hour, hour_of_day, date, week, month, raw]
    view_label: "Page Metadata"
  }

}
