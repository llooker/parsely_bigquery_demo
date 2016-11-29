view: xtra_adserver {
  sql_table_name: parsely.xtra_adserver ;;

  dimension: ad_revenue_per_1000 {
    type: number
    sql: ${TABLE}.ad_revenue_per_1000 ;;
    hidden: yes
  }

  dimension: ad_total_impressions {
    type: number
    sql: ${TABLE}.ad_total_impressions ;;
    hidden: yes
  }

  dimension: ad_viewable_impressions {
    type: number
    sql: ${TABLE}.ad_viewable_impressions ;;
    hidden: yes
  }

  dimension: metadata_canonical_url {
    type: string
    sql: ${TABLE}.metadata_canonical_url ;;
  }

  measure: record_count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }

  measure: total_impressions {
    type: sum
    sql: ${ad_total_impressions} ;;
  }

  measure: viewable_impressions {
    type: sum
    sql: ${ad_viewable_impressions} ;;
  }

  measure: ad_revenue {
    type: average
    sql: ${ad_revenue_per_1000} * ${ad_total_impressions} ;;
  }
}
