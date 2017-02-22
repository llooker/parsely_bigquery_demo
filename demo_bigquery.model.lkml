connection: "demo_bigquery"
persist_for: "12 hours"

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

  join:  page_facts {
    sql_on: ${rawdata.metadata_canonical_url} = ${page_facts.metadata_canonical_url} ;;
    relationship: many_to_one
  }

  join:  page_engagement_facts {
    sql_on: ${rawdata.action_raw} = ${page_engagement_facts.pageview_start_raw} and
            ${rawdata.session_id} = ${page_engagement_facts.session_id} and
            ${rawdata.action_raw} = ${page_engagement_facts.pageview_start_raw} and
            ${rawdata.metadata_canonical_url} = ${page_engagement_facts.metadata_canonical_url} and
            ${rawdata.action} = 'pageview';;
    view_label: "Session Page Engagement"
    relationship: one_to_one
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
