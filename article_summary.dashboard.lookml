# - dashboard: article_summary
#   title: Article Overview
#   layout: grid
#   rows:
#     - elements: [distinct_visitors, avg_engage_tm, total_pageviews_1]
#       height: 200
#
#     - elements: [daily_metrics, hourly_performance]
#       height: 400
#
#     - elements: [article_info, referrers, reads_by_session_breakdown]
#       height: 400
#
#   filters:
#
#   - name: date
#     type: date_filter
#
#   - name: title
#     type: field_filter
#     explore: rawdata
#     field: rawdata.metadata_title
# #     default_value: "14 Best Bluetooth Speakers for Blasting Tunes Without Wires"
#
#   - name: canonical_url
#     type: field_filter
#     explore: rawdata
#     field: rawdata.metadata_canonical_url
#     default_value: "http://www.lennyletter.com/style/a490/ashley-graham-brushing-off-the-body-shamers-and-haters/"
#
#   elements:
#
#     - name: distinct_visitors
#       title: Distinct Visitors
#       type: single_value
#       model: demo_bigquery
#       explore: rawdata
#       measures: [rawdata.visitors]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
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
#
#     - name: avg_engage_tm
#       title: Average Engaged Time (seconds)
#       type: single_value
#       model: demo_bigquery
#       explore: rawdata
#       measures: [rawdata.average_engaged_time_per_visitor]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
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
#
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
#         canonical_url: rawdata.metadata_canonical_url
#
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
#         canonical_url: rawdata.metadata_canonical_url
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
#
#     - name: article_info
#       title: Article Info
#       type: looker_single_record
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.metadata_title, page_facts.publish_date, rawdata.metadata_authors, rawdata.metadata_section, rawdata.metadata_canonical_url, rawdata.metadata_full_content_word_count]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
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
#
#     - name: referrers
#       title: Top 15 External Referrers
#       type: looker_bar
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.ref_domain]
#       measures: [rawdata.visitors]
#       filters:
#         rawdata.referrer: -"arstechnica.com",-EMPTY
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
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
#
#     - name: reads_by_session_breakdown
#       title: Reads by Session Breakdown
#       type: looker_pie
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [page_engagement_facts.read_category]
#       measures: [page_engagement_facts.count]
#       filters:
#         page_engagement_facts.read_category: -NULL
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
#       sorts: [page_engagement_facts.read_category]
#       limit: '500'
#       column_limit: '50'
#       total: true
#       query_timezone: America/New_York
#       value_labels: legend
#       label_type: labPer
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#       colors: 'palette: Mixed Dark'
#       series_colors:
#         Deep Read (at least 30 seconds): "#2a85a9"
#         Read (at least 10 to 30 seconds): "#33a02c"
#         Skim (less than 10 seconds): "#b2df8a"
#       series_labels: {}
#       inner_radius: 30
#
#     - name: hourly_performance
#       title: Hourly Performance (For First 72 Hours Since Published)
#       type: looker_line
#       model: demo_bigquery
#       explore: rawdata
#       dimensions: [rawdata.hours_since_publish_date]
#       measures: [rawdata.visitors, rawdata.average_engaged_time_per_visitor]
#       listen:
#         title: rawdata.metadata_title
#         date: rawdata.action_date
#         canonical_url: rawdata.metadata_canonical_url
#       filters:
#         rawdata.hours_since_publish_date: "<73"
#       sorts: [rawdata.hours_since_publish_date]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/New_York
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: false
#       limit_displayed_rows: false
#       y_axis_combined: false
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: ordinal
#       y_axis_scale_mode: linear
#       show_null_points: true
#       point_style: none
#       interpolation: linear
#       value_labels: legend
#       label_type: labPer
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types:
#         rawdata.average_engaged_time_per_visitor: area
#         rawdata.visitors: column
#       colors: ['palette: Mixed Dark']
#       series_colors:
#         rawdata.visitors: "#1f78b4"
#         rawdata.average_engaged_time_per_visitor: "#a6cee3"
#       series_labels: {}
#       inner_radius: 30
#       y_axis_orientation: [left, right]
