- dashboard: overview
  title: Parse.ly Overview
  layout: grid
  rows:
    - elements: [total_pageviews, visitor_count, session_count, avg_engaged_tm]
      height: 200
    
    - elements: [device_pie, os_pie, country_pie, content_pie]
      height: 300
      
    - elements: [daily_visitors_and_pageviews, visitor_funnel]
      height: 400
    
    - elements: [referrers, top_articles]
      height: 400
      
    - elements: [location_map, zip_map]
      height: 400
  

  filters:
  
  - name: date
    type: date_filter
#     default_value: 30 Days
  
  - name: publish_date
    type: date_filter
#     default_value: 30 Days

  elements:
  
    - name: total_pageviews
      title: Total Pageviews
      type: single_value
      model: demo_bigquery
      explore: rawdata
      measures: [rawdata.pageviews]
      sorts: [rawdata.pageviews desc]
      limit: 500
      font_size: medium
      text_color: black
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: visitor_count
      title: Distinct Visitor Count
      type: single_value
      model: demo_bigquery
      explore: rawdata
      measures: [rawdata.visitors]
      sorts: [rawdata.visitors desc]
      limit: 500
      font_size: medium
      text_color: black
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
        
    
    - name: session_count
      title: Session Count
      type: single_value
      model: demo_bigquery
      explore: rawdata
      measures: [rawdata.session_count]
      sorts: [rawdata.session_count desc]
      limit: 500
      font_size: medium
      text_color: black
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: avg_engaged_tm
      title: Average Engaged Time
      type: single_value
      model: demo_bigquery
      explore: rawdata
      measures: [rawdata.average_engaged_time_per_visitor]
      sorts: [rawdata.session_id, rawdata.average_engaged_time_per_visitor desc]
      limit: 500
      font_size: medium
      text_color: black
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: daily_visitors_and_pageviews
      title: Daily Visitors and Pageviews
      type: looker_line
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.action_date]
      measures: [rawdata.visitors, rawdata.pageviews]
      listen:
        date: rawdata.action_date
      sorts: [rawdata.action_date desc]
      limit: 500
      column_limit: ''
      stacking: ''
      show_value_labels: false
      label_density: 25
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      show_null_points: true
      show_null_labels: false
      y_axis_combined: true
      point_style: none
      interpolation: linear
      colors: ['#388f5b','#2a85a9']
    
    - name: visitor_funnel
      title: Visitor Funnel
      type: looker_column
      model: demo_bigquery
      explore: rawdata
      measures: [user_facts.count, user_facts.return_count, user_facts.frequent_count]
      sorts: [user_facts.count desc]
      limit: '500'
      listen:
        date: rawdata.action_date
      column_limit: '50'
      query_timezone: America/New_York
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: '#808080'
      show_dropoff: true
      colors: ['#5245ed', '#1ea8df', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      series_colors: {}
      series_labels:
        user_facts.count: Total Visitors

    
    - name: location_map
      title: Pageviews by Location
      type: looker_map
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ip_location]
      measures: [rawdata.pageviews]
      filters:
        rawdata.pageviews: '>25'
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
      sorts: [rawdata.pageviews desc]
      limit: 500
      map_plot_mode: points
      map_tile_provider: positron
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: true
      map_zoomable: true
      map_marker_type: circle
      map_marker_radius_mode: proportional_value
      map_marker_units: meters
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: fixed
      show_view_names: false
      quantize_map_value_colors: false
    
    - name: zip_map
      title: US Pageviews by Zip
      type: looker_geo_coordinates
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ip_postal]
      measures: [rawdata.pageviews]
      sorts: [rawdata.pageviews desc]
      limit: 500
      map: usa
      show_view_names: true
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: device_pie
      title: Device Type Breakdown by Visitors
      type: looker_pie
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ua_devicetype]
      measures: [rawdata.visitors]
      sorts: [rawdata.ua_devicetype]
      limit: 500
      column_limit: 50
      value_labels: legend
      colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
        '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      show_view_names: true
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: os_pie
      title: OS Breakdown by Visitors
      type: looker_pie
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ua_os]
      measures: [rawdata.visitors]
      sorts: [rawdata.visitors desc]
      limit: 500
      column_limit: 50
      value_labels: legend
      colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
        '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      show_view_names: true
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: country_pie
      title: Country Breakdown by Visitors
      type: looker_pie
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ip_country]
      measures: [rawdata.visitors]
      sorts: [rawdata.visitors desc]
      limit: 50
      column_limit: 50
      value_labels: legend
      colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
        '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      show_view_names: false
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: content_pie
      title: Content Breakdown by Visitors
      type: looker_pie
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.metadata_section]
      measures: [rawdata.visitors]
      filters:
        rawdata.metadata_section: -NULL,-EMPTY
      sorts: [rawdata.metadata_section desc]
      limit: 50
      column_limit: 50
      value_labels: legend
      colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
        '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      show_view_names: false
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: referrers
      title: Top 20 Referrers
      type: looker_bar
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.ref_clean]
      measures: [rawdata.visitors, rawdata.pageviews]
      filters:
        rawdata.ref_clean: -EMPTY
      sorts: [rawdata.visitors desc]
      limit: 20
      column_limit: 50
      stacking: ''
      colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
        '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_labels: false
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
    
    - name: top_articles
      title: Top 50 Articles
      type: table
      model: demo_bigquery
      explore: rawdata
      dimensions: [rawdata.metadata_title]
      measures: [rawdata.visitors, rawdata.pageviews, rawdata.average_engaged_time_per_visitor]
      sorts: [rawdata.visitors desc]
      limit: 50
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      table_theme: gray
      limit_displayed_rows: false
      listen: 
        date: rawdata.action_date
        publish_date: rawdata.metadata_pub_date_tmsp_date
  