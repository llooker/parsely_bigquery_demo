connection: "demo_bigquery"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

explore: rawdata {
  join: user_facts {
    sql_on: ${rawdata.visitor_site_id} = ${user_facts.visitor_site_id} ;;
    relationship: many_to_one
    view_label: "Visitors"
  }

  join: xtra_adserver {
    sql_on: ${rawdata.metadata_canonical_url} = ${xtra_adserver.metadata_canonical_url} ;;
    relationship: one_to_one
    view_label: "Ad Metrics"
  }

  join: xtra_subscribers {
    sql_on: ${rawdata.extra_data__ix_cookie_id} = ${xtra_subscribers.custom_subscriber_id} ;;
    relationship: many_to_one
    view_label: "Subscriber Metrics"
  }
}
