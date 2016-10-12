- connection: demo_bigquery

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: rawdata
  joins: 
  - join: user_facts
    sql_on: ${rawdata.visitor_site_id} = ${user_facts.visitor_site_id}
    relationship: many_to_one
    view_label: Visitors
  - join: xtra_adserver
    sql_on: ${rawdata.metadata_canonical_url} = ${xtra_adserver.metadata_canonical_url}
    relationship: one_to_one
    view_label: Ad Metrics
  - join: xtra_subscribers
    sql_on: ${rawdata.extra_data__ix_cookie_id} = ${xtra_subscribers.custom_subscriber_id}
    relationship: many_to_one
    view_label: Subscriber Metrics