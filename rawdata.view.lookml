- view: rawdata
  sql_table_name: parsely.rawdata
  fields:

  - dimension: action
    type: string
    sql: ${TABLE}.action
    view_label: "Basic Event Properties"

  - dimension: apikey
    type: string
    sql: ${TABLE}.apikey
    view_label: "Basic Event Properties"

  - dimension: engaged_time_inc
    type: number
    sql: ${TABLE}.engaged_time_inc
    view_label: "Basic Event Properties"

  - dimension: display
    type: yesno
    sql: ${TABLE}.display
    view_label: "Screen"

  - dimension: display_avail_height
    type: number
    sql: ${TABLE}.display_avail_height
    view_label: "Screen"

  - dimension: display_avail_width
    type: number
    sql: ${TABLE}.display_avail_width
    view_label: "Screen"

  - dimension: display_pixel_depth
    type: number
    sql: ${TABLE}.display_pixel_depth
    view_label: "Screen"

  - dimension: display_total_height
    type: number
    sql: ${TABLE}.display_total_height
    view_label: "Screen"

  - dimension: display_total_width
    type: number
    sql: ${TABLE}.display_total_width
    view_label: "Screen"

  - dimension: extra_data__brand
    type: string
    sql: ${TABLE}.extra_data.brand
    view_label: "Extra & Custom"

  - dimension: extra_data__bu
    type: string
    sql: ${TABLE}.extra_data.bu
    view_label: "Extra & Custom"

  - dimension: extra_data__dscrp
    type: string
    sql: ${TABLE}.extra_data.dscrp
    view_label: "Extra & Custom"

  - dimension: extra_data__hash
    type: string
    sql: ${TABLE}.extra_data.hash
    view_label: "Extra & Custom"

  - dimension: extra_data__icctm_ht_aid
    type: string
    sql: ${TABLE}.extra_data.icctm_ht_aid
    view_label: "Extra & Custom"

  - dimension: extra_data__icxid
    type: string
    sql: ${TABLE}.extra_data.icxid
    view_label: "Extra & Custom"

  - dimension: extra_data__ix_cookie_id
    type: string
    sql: ${TABLE}.extra_data.ix_cookie_id
    view_label: "Extra & Custom"

  - dimension: extra_data__load
    type: number
    sql: ${TABLE}.extra_data.load
    view_label: "Extra & Custom"

  - dimension: extra_data__mxdpth
    type: string
    sql: ${TABLE}.extra_data.mxdpth
    view_label: "Extra & Custom"

  - dimension: extra_data__site
    type: string
    sql: ${TABLE}.extra_data.site
    view_label: "Extra & Custom"

  - dimension: extra_data__subsection
    type: string
    sql: ${TABLE}.extra_data.subsection
    view_label: "Extra & Custom"

  - dimension: extra_data__type
    type: string
    sql: ${TABLE}.extra_data.type
    view_label: "Extra & Custom"

  - dimension: ip_city
    type: string
    sql: ${TABLE}.ip_city
    view_label: "IP & Geo"

  - dimension: ip_continent
    type: string
    sql: ${TABLE}.ip_continent
    view_label: "IP & Geo"

  - dimension: ip_country
    type: string
    sql: ${TABLE}.ip_country
    view_label: "IP & Geo"

  - dimension: ip_lat
    type: number
    sql: ${TABLE}.ip_lat
    view_label: "IP & Geo"

  - dimension: ip_lon
    type: number
    sql: ${TABLE}.ip_lon
    view_label: "IP & Geo"

  - dimension: ip_postal
    type: string
    sql: ${TABLE}.ip_postal
    view_label: "IP & Geo"

  - dimension: ip_subdivision
    type: string
    sql: ${TABLE}.ip_subdivision
    view_label: "IP & Geo"

  - dimension: ip_timezone
    type: string
    sql: ${TABLE}.ip_timezone
    view_label: "IP & Geo"

  - dimension: metadata
    type: yesno
    sql: ${TABLE}.metadata
    view_label: "Page Metadata"

  - dimension: metadata_authors
    type: string
    sql: ${TABLE}.metadata_authors
    fanout_on: metadata_authors
    view_label: "Page Metadata"

  - dimension: metadata_canonical_url
    type: string
    sql: ${TABLE}.metadata_canonical_url
    view_label: "Page Metadata"

  - dimension: metadata_custom_metadata
    type: string
    sql: ${TABLE}.metadata_custom_metadata
    view_label: "Page Metadata"

  - dimension: metadata_duration
    type: number
    sql: ${TABLE}.metadata_duration
    view_label: "Page Metadata"

  - dimension: metadata_full_content_word_count
    type: number
    sql: ${TABLE}.metadata_full_content_word_count
    view_label: "Page Metadata"

  - dimension: metadata_image_url
    type: string
    sql: ${TABLE}.metadata_image_url
    view_label: "Page Metadata"

  - dimension: metadata_page_type
    type: string
    sql: ${TABLE}.metadata_page_type
    view_label: "Page Metadata"

  - dimension: metadata_post_id
    type: string
    sql: ${TABLE}.metadata_post_id
    view_label: "Page Metadata"

  - dimension: metadata_pub_date_tmsp
    type: number
    sql: ${TABLE}.metadata_pub_date_tmsp
    view_label: "Page Metadata"

  - dimension: metadata_save_date_tmsp
    type: number
    sql: ${TABLE}.metadata_save_date_tmsp
    view_label: "Page Metadata"

  - dimension: metadata_section
    type: string
    sql: ${TABLE}.metadata_section
    view_label: "Page Metadata"

  - dimension: metadata_share_urls
    type: string
    sql: ${TABLE}.metadata_share_urls
    fanout_on: metadata_share_urls
    view_label: "Page Metadata"

  - dimension: metadata_tags
    type: string
    sql: ${TABLE}.metadata_tags
    fanout_on: metadata_tags
    view_label: "Page Metadata"

  - dimension: metadata_thumb_url
    type: string
    sql: ${TABLE}.metadata_thumb_url
    view_label: "Page Metadata"

  - dimension: metadata_title
    type: string
    sql: ${TABLE}.metadata_title
    view_label: "Page Metadata"

  - dimension: metadata_urls
    type: string
    sql: ${TABLE}.metadata_urls
    fanout_on: metadata_urls
    view_label: "Page Metadata"

  - dimension: ref_category
    type: string
    sql: ${TABLE}.ref_category
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_clean
    type: string
    sql: ${TABLE}.ref_clean
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_domain
    type: string
    sql: ${TABLE}.ref_domain
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_fragment
    type: string
    sql: ${TABLE}.ref_fragment
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_netloc
    type: string
    sql: ${TABLE}.ref_netloc
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_params
    type: string
    sql: ${TABLE}.ref_params
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_path
    type: string
    sql: ${TABLE}.ref_path
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_query
    type: string
    sql: ${TABLE}.ref_query
    view_label: "Traffic Sources (Referrers)"

  - dimension: ref_scheme
    type: string
    sql: ${TABLE}.ref_scheme
    view_label: "Traffic Sources (Referrers)"

  - dimension: referrer
    type: string
    sql: ${TABLE}.referrer
    view_label: "Traffic Sources (Referrers)"

  - dimension: session
    type: yesno
    sql: ${TABLE}.session
    view_label: "Sessions"

  - dimension: session_id
    type: number
    sql: ${TABLE}.session_id
    view_label: "Sessions"

  - dimension: session_initial_referrer
    type: string
    sql: ${TABLE}.session_initial_referrer
    view_label: "Sessions"

  - dimension: session_initial_url
    type: string
    sql: ${TABLE}.session_initial_url
    view_label: "Sessions"

  - dimension: session_last_session_timestamp
    type: number
    sql: ${TABLE}.session_last_session_timestamp
    view_label: "Sessions"

  - dimension: session_timestamp
    type: number
    sql: ${TABLE}.session_timestamp
    view_label: "Sessions"

  - dimension: slot
    type: yesno
    sql: ${TABLE}.slot
    view_label: "Slots"

  - dimension: slot_url
    type: string
    sql: ${TABLE}.slot_url
    view_label: "Slots"

  - dimension: slot_x
    type: number
    sql: ${TABLE}.slot_x
    view_label: "Slots"

  - dimension: slot_xpath
    type: string
    sql: ${TABLE}.slot_xpath
    view_label: "Slots"

  - dimension: slot_y
    type: number
    sql: ${TABLE}.slot_y
    view_label: "Slots"

  - dimension: sref_category
    type: string
    sql: ${TABLE}.sref_category
    view_label: "Sessions"

  - dimension: sref_clean
    type: string
    sql: ${TABLE}.sref_clean
    view_label: "Sessions"

  - dimension: sref_domain
    type: string
    sql: ${TABLE}.sref_domain
    view_label: "Sessions"

  - dimension: sref_fragment
    type: string
    sql: ${TABLE}.sref_fragment
    view_label: "Sessions"

  - dimension: sref_netloc
    type: string
    sql: ${TABLE}.sref_netloc
    view_label: "Sessions"

  - dimension: sref_params
    type: string
    sql: ${TABLE}.sref_params
    view_label: "Sessions"

  - dimension: sref_path
    type: string
    sql: ${TABLE}.sref_path
    view_label: "Sessions"

  - dimension: sref_query
    type: string
    sql: ${TABLE}.sref_query
    view_label: "Sessions"

  - dimension: sref_scheme
    type: string
    sql: ${TABLE}.sref_scheme
    view_label: "Sessions"

  - dimension: surl_clean
    type: string
    sql: ${TABLE}.surl_clean
    view_label: "Sessions"

  - dimension: surl_domain
    type: string
    sql: ${TABLE}.surl_domain
    view_label: "Sessions"

  - dimension: surl_fragment
    type: string
    sql: ${TABLE}.surl_fragment
    view_label: "Sessions"

  - dimension: surl_netloc
    type: string
    sql: ${TABLE}.surl_netloc
    view_label: "Sessions"

  - dimension: surl_params
    type: string
    sql: ${TABLE}.surl_params
    view_label: "Sessions"

  - dimension: surl_path
    type: string
    sql: ${TABLE}.surl_path
    view_label: "Sessions"

  - dimension: surl_query
    type: string
    sql: ${TABLE}.surl_query
    view_label: "Sessions"

  - dimension: surl_scheme
    type: string
    sql: ${TABLE}.surl_scheme
    view_label: "Sessions"

  - dimension: surl_utm_campaign
    type: string
    sql: ${TABLE}.surl_utm_campaign
    view_label: "Sessions"

  - dimension: surl_utm_content
    type: string
    sql: ${TABLE}.surl_utm_content
    view_label: "Sessions"

  - dimension: surl_utm_medium
    type: string
    sql: ${TABLE}.surl_utm_medium
    view_label: "Sessions"

  - dimension: surl_utm_source
    type: string
    sql: ${TABLE}.surl_utm_source
    view_label: "Sessions"

  - dimension: surl_utm_term
    type: string
    sql: ${TABLE}.surl_utm_term
    view_label: "Sessions"

  - dimension: timestamp_info
    type: yesno
    sql: ${TABLE}.timestamp_info
    view_label: "Time"

  - dimension: timestamp_info_nginx_ms
    type: number
    sql: ${TABLE}.timestamp_info_nginx_ms
    view_label: "Time"

  - dimension: timestamp_info_override_ms
    type: number
    sql: ${TABLE}.timestamp_info_override_ms
    view_label: "Time"

  - dimension: timestamp_info_pixel_ms
    type: number
    sql: ${TABLE}.timestamp_info_pixel_ms
    view_label: "Time"

  - dimension: ts_action
    type: string
    sql: ${TABLE}.ts_action
    view_label: "Time"

  - dimension: millis_since_last_visit
    type: number
    sql: ${session_timestamp} - ${session_last_session_timestamp}
    view_label: "Time"

  - dimension: ts_session_current
    type: string
    sql: ${TABLE}.ts_session_current
    view_label: "Time"

  - dimension: ts_session_last
    type: string
    sql: ${TABLE}.ts_session_last
    view_label: "Time"

  - dimension: ua_browser
    type: string
    sql: ${TABLE}.ua_browser
    view_label: "UA & Devices"

  - dimension: ua_browserversion
    type: string
    sql: ${TABLE}.ua_browserversion
    view_label: "UA & Devices"

  - dimension: ua_device
    type: string
    sql: ${TABLE}.ua_device
    view_label: "UA & Devices"

  - dimension: ua_devicebrand
    type: string
    sql: ${TABLE}.ua_devicebrand
    view_label: "UA & Devices"

  - dimension: ua_devicemodel
    type: string
    sql: ${TABLE}.ua_devicemodel
    view_label: "UA & Devices"

  - dimension: ua_devicetouchcapable
    type: yesno
    sql: ${TABLE}.ua_devicetouchcapable
    view_label: "UA & Devices"

  - dimension: ua_devicetype
    type: string
    sql: ${TABLE}.ua_devicetype
    view_label: "UA & Devices"

  - dimension: ua_os
    type: string
    sql: ${TABLE}.ua_os
    view_label: "UA & Devices"

  - dimension: ua_osversion
    type: string
    sql: ${TABLE}.ua_osversion
    view_label: "UA & Devices"

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent
    view_label: "UA & Devices"

  - dimension: url
    type: string
    sql: ${TABLE}.url
    view_label: "URL"

  - dimension: url_clean
    type: string
    sql: ${TABLE}.url_clean
    view_label: "URL"

  - dimension: url_domain
    type: string
    sql: ${TABLE}.url_domain
    view_label: "URL"

  - dimension: url_fragment
    type: string
    sql: ${TABLE}.url_fragment
    view_label: "URL"

  - dimension: url_netloc
    type: string
    sql: ${TABLE}.url_netloc
    view_label: "URL"

  - dimension: url_params
    type: string
    sql: ${TABLE}.url_params
    view_label: "URL"

  - dimension: url_path
    type: string
    sql: ${TABLE}.url_path
    view_label: "URL"

  - dimension: url_query
    type: string
    sql: ${TABLE}.url_query
    view_label: "URL"

  - dimension: url_scheme
    type: string
    sql: ${TABLE}.url_scheme
    view_label: "URL"

  - dimension: utm_campaign
    type: string
    sql: ${TABLE}.utm_campaign
    view_label: "URL"

  - dimension: utm_content
    type: string
    sql: ${TABLE}.utm_content
    view_label: "URL"

  - dimension: utm_medium
    type: string
    sql: ${TABLE}.utm_medium
    view_label: "URL"

  - dimension: utm_source
    type: string
    sql: ${TABLE}.utm_source
    view_label: "URL"

  - dimension: utm_term
    type: string
    sql: ${TABLE}.utm_term
    view_label: "URL"

  - dimension: version
    type: number
    sql: ${TABLE}.version
    view_label: "Basic Event Properties"

  - dimension: visitor
    type: yesno
    sql: ${TABLE}.visitor
    view_label: "Visitors"

  - dimension: visitor_ip
    type: string
    sql: ${TABLE}.visitor_ip
    view_label: "Visitors"

  - dimension: visitor_network_id
    type: string
    sql: ${TABLE}.visitor_network_id
    view_label: "Visitors"

  - dimension: visitor_site_id
    type: string
    sql: ${TABLE}.visitor_site_id
    view_label: "Visitors"

  - measure: events
    type: count
    drill_fields: []
    view_label: "Metrics"
    
  - measure: pageviews
    type: count
    filter: 
      action: pageview
    view_label: "Metrics"

  - measure: pageviews_mobile
    type: count
    filter: 
      action: pageview
      ua_devicetype: mobile
    view_label: "Metrics"

  - measure: pageviews_desktop
    type: count
    filter: 
      action: pageview
      ua_devicetype: desktop
    view_label: "Metrics"

  - measure: post_count
    type: count_distinct 
    sql: ${metadata_canonical_url}
    view_label: "Metrics"
  
  - measure: visitors
    type: count_distinct
    sql: ${visitor_site_id}
    view_label: "Metrics"

  - measure: visitors_mobile
    type: count_distinct
    sql: ${visitor_site_id}
    filter: 
      action: pageview
      ua_devicetype: mobile
    view_label: "Metrics"

  - measure: visitors_desktop
    type: count_distinct
    sql: ${visitor_site_id}
    filter: 
      action: pageview
      ua_devicetype: desktop
    view_label: "Metrics"
  
  - measure: network_visitors
    type: count_distinct
    sql: ${visitor_network_id}
    view_label: "Metrics"
  
  - measure: total_engaged_time
    type: sum
    sql: ${engaged_time_inc}
    view_label: "Metrics"
  
  - measure: average_engaged_time_per_visitor
    type: number
    sql: ${total_engaged_time}/${visitors}
    view_label: "Metrics"
    value_format_name: decimal_2
  
  - measure: session_count
    type: count_distinct
    sql: ${session_id} ||'-' || ${visitor_site_id}
    view_label: "Metrics"
