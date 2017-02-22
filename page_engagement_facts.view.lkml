view: page_engagement_facts {
  ## This derived table calculates the engaged time based on canonical url, visitor site id, and session id.
  ## It is joined on the first pageview event for the url on each visitor's session.
  ## If there are multiple pageviews for the same session, the engaged time is combined on the first pageview event.
  derived_table: {
    sql: select visitor_site_id
        , session_id
        , metadata_canonical_url
        , min(case when action= 'pageview' then ts_action else null end) as pageview_start_time
        , sum(case when action = 'heartbeat' then engaged_time_inc else 0 end ) as total_engaged_time
      from rawdata
      group by 1,2,3
       ;;
  }

  measure: count {
    type: count
  }

  dimension: visitor_site_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.visitor_site_id ;;
  }

  dimension: session_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.session_id ;;
  }

  dimension: metadata_canonical_url {
    type: string
    hidden:  yes
    sql: ${TABLE}.metadata_canonical_url ;;
  }

  dimension_group: pageview_start {
    type: time
    sql: TIMESTAMP(${TABLE}.pageview_start_time) ;;
    timeframes: [raw, date, hour, week, month, year, time]
  }

  dimension: total_engaged_time {
    type: number
    sql: ${TABLE}.total_engaged_time ;;
  }

  dimension: pk {
    sql: concat(${metadata_canonical_url},${TABLE}.pageview_start_time,cast(${session_id} as string),${visitor_site_id}) ;;
    primary_key: yes
    hidden:  yes
  }

  dimension: read_category {
    case: {
      when: {
        label: "Deep Read (at least 30 seconds)"
        sql: ${total_engaged_time} >= 30 ;;
      }
      when: {
        label: "Read (at least 10 seconds)"
        sql: ${total_engaged_time} >= 10 ;;
      }
      when: {
        label: "Skim (less than 10 seconds)"
        sql: ${total_engaged_time} >=0;;
      }

    }
  }
}
