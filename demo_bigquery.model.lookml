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

- explore: xtra_domains

