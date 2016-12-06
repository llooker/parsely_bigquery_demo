# - dashboard: article_summary
#   title: Article Overview
#   layout: grid
#   rows:
#     - elements: [distinct_visitors, avg_engage_tm, total_pageviews_1]
#       height: 200

#     - elements: [daily_metrics]
#       height: 400

#     - elements: [article_info, referrers]
#       height: 400

#   filters:

#   - name: date
#     type: date_filter

#   - name: title
#     type: field_filter
#     explore: rawdata
#     field: rawdata.metadata_title
#     default_value: "14 Best Bluetooth Speakers for Blasting Tunes Without Wires"

#   elements:

#     - name: distinct_visitors
#       title: Distinct Visitors
#       type: single_value
#       model: demo_bigquery
#       explore: rawdata
#       measures: [rawdata.visitors]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#       sorts: [rawdata.visitors desc]
#       limit: 15
#       column_limit: 50
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       show_null_labels: false
#       font_size: small
#       width: 3
#       height: 2

#     - name: avg_engage_tm
#       title: Average Engaged Time (seconds)
#       type: single_value
#       model: demo_bigquery
#       explore: rawdata
#       measures: [rawdata.average_engaged_time_per_visitor]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#       sorts: [rawdata.average_engaged_time_per_visitor desc]
#       limit: 15
#       column_limit: 50
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       show_null_labels: false
#       font_size: small
#       width: 3
#       height: 2

#     - name: total_pageviews_1
#       title: Total Pageviews
#       type: single_value
#       model: demo_bigquery
#       explore: rawdata
#       measures: [rawdata.pageviews]
#       sorts: [rawdata.pageviews desc]
#       limit: 500
#       font_size: medium
#       text_color: black
#       listen:
#         date: rawdata.action_date
#         title: rawdata.metadata_title

#     - name: daily_metrics
#       title: Daily Visitors and Pageviews
#       type: looker_line
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.action_date]
#       measures: [rawdata.visitors, rawdata.pageviews]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#       sorts: [rawdata.action_date desc]
#       limit: 500
#       column_limit: ''
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: false
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       show_null_points: true
#       show_null_labels: false
#       y_axis_combined: true
#       point_style: none
#       interpolation: linear
#       colors: ['#388f5b', '#2a85a9']
#       width: 12
#       height: 3

#     - name: article_info
#       title: Article Info
#       type: looker_single_record
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.metadata_title, rawdata.metadata_pub_date_tmsp_date, rawdata.metadata_authors, rawdata.metadata_section, rawdata.url]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#       sorts: [rawdata.pub_date desc]
#       limit: 500
#       column_limit: ''
#       show_view_names: false
#       show_null_labels: false
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       show_null_points: true
#       y_axis_combined: true
#       point_style: none
#       interpolation: linear
#       colors: ['#388f5b', '#2a85a9']

#     - name: referrers
#       title: Top 15 External Referrers
#       type: looker_bar
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.referrer]
#       measures: [rawdata.visitors]
#       filters:
#         rawdata.referrer: -"arstechnica.com",-EMPTY
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#       sorts: [rawdata.visitors desc]
#       limit: 15
#       column_limit: ''
#       show_view_names: false
#       show_null_labels: false
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       show_null_points: true
#       y_axis_combined: true
#       point_style: none
#       interpolation: linear
#       colors: ['#2a85a9']
#       inner_radius: 50
