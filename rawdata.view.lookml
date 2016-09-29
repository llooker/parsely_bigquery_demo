- view: rawdata
  sql_table_name: parsely.rawdata
  fields:

  - dimension: action
    type: string
    sql: ${TABLE}.action

  - dimension: apikey
    type: string
    sql: ${TABLE}.apikey

  - dimension: display
    type: yesno
    sql: ${TABLE}.display

  - dimension: display_avail_height
    type: number
    sql: ${TABLE}.display_avail_height

  - dimension: display_avail_width
    type: number
    sql: ${TABLE}.display_avail_width

  - dimension: display_pixel_depth
    type: number
    sql: ${TABLE}.display_pixel_depth

  - dimension: display_total_height
    type: number
    sql: ${TABLE}.display_total_height

  - dimension: display_total_width
    type: number
    sql: ${TABLE}.display_total_width

  - dimension: engaged_time_inc
    type: number
    sql: ${TABLE}.engaged_time_inc

  - dimension: extra_data__brand
    type: string
    sql: ${TABLE}.extra_data.brand

  - dimension: extra_data__bu
    type: string
    sql: ${TABLE}.extra_data.bu

  - dimension: extra_data__dscrp
    type: string
    sql: ${TABLE}.extra_data.dscrp

  - dimension: extra_data__hash
    type: string
    sql: ${TABLE}.extra_data.hash

  - dimension: extra_data__icctm_ht_aid
    type: string
    sql: ${TABLE}.extra_data.icctm_ht_aid

  - dimension: extra_data__icxid
    type: string
    sql: ${TABLE}.extra_data.icxid

  - dimension: extra_data__ix_cookie_id
    type: string
    sql: ${TABLE}.extra_data.ix_cookie_id

  - dimension: extra_data__load
    type: number
    sql: ${TABLE}.extra_data.load

  - dimension: extra_data__mxdpth
    type: string
    sql: ${TABLE}.extra_data.mxdpth

  - dimension: extra_data__site
    type: string
    sql: ${TABLE}.extra_data.site

  - dimension: extra_data__subsection
    type: string
    sql: ${TABLE}.extra_data.subsection

  - dimension: extra_data__type
    type: string
    sql: ${TABLE}.extra_data.type

  - dimension: ip_city
    type: string
    sql: ${TABLE}.ip_city

  - dimension: ip_continent
    type: string
    sql: ${TABLE}.ip_continent

  - dimension: ip_country
    type: string
    sql: ${TABLE}.ip_country

  - dimension: ip_lat
    type: number
    sql: ${TABLE}.ip_lat

  - dimension: ip_lon
    type: number
    sql: ${TABLE}.ip_lon

  - dimension: ip_postal
    type: string
    sql: ${TABLE}.ip_postal

  - dimension: ip_subdivision
    type: string
    sql: ${TABLE}.ip_subdivision

  - dimension: ip_timezone
    type: string
    sql: ${TABLE}.ip_timezone

  - dimension: metadata
    type: yesno
    sql: ${TABLE}.metadata

  - dimension: metadata_authors
    type: string
    sql: ${TABLE}.metadata_authors
    fanout_on: metadata_authors

  - dimension: metadata_canonical_url
    type: string
    sql: ${TABLE}.metadata_canonical_url

  - dimension: metadata_custom_metadata
    type: string
    sql: ${TABLE}.metadata_custom_metadata

  - dimension: metadata_duration
    type: number
    sql: ${TABLE}.metadata_duration

  - dimension: metadata_full_content_word_count
    type: number
    sql: ${TABLE}.metadata_full_content_word_count

  - dimension: metadata_image_url
    type: string
    sql: ${TABLE}.metadata_image_url

  - dimension: metadata_page_type
    type: string
    sql: ${TABLE}.metadata_page_type

  - dimension: metadata_post_id
    type: string
    sql: ${TABLE}.metadata_post_id

  - dimension: metadata_pub_date_tmsp
    type: number
    sql: ${TABLE}.metadata_pub_date_tmsp

  - dimension: metadata_save_date_tmsp
    type: number
    sql: ${TABLE}.metadata_save_date_tmsp

  - dimension: metadata_section
    type: string
    sql: ${TABLE}.metadata_section

  - dimension: metadata_share_urls
    type: string
    sql: ${TABLE}.metadata_share_urls
    fanout_on: metadata_share_urls

  - dimension: metadata_tags
    type: string
    sql: ${TABLE}.metadata_tags
    fanout_on: metadata_tags

  - dimension: metadata_thumb_url
    type: string
    sql: ${TABLE}.metadata_thumb_url

  - dimension: metadata_title
    type: string
    sql: ${TABLE}.metadata_title

  - dimension: metadata_urls
    type: string
    sql: ${TABLE}.metadata_urls
    fanout_on: metadata_urls

  - dimension: ref_category
    type: string
    sql: ${TABLE}.ref_category

  - dimension: ref_clean
    type: string
    sql: ${TABLE}.ref_clean

  - dimension: ref_domain
    type: string
    sql: ${TABLE}.ref_domain

  - dimension: ref_fragment
    type: string
    sql: ${TABLE}.ref_fragment

  - dimension: ref_netloc
    type: string
    sql: ${TABLE}.ref_netloc

  - dimension: ref_params
    type: string
    sql: ${TABLE}.ref_params

  - dimension: ref_path
    type: string
    sql: ${TABLE}.ref_path

  - dimension: ref_query
    type: string
    sql: ${TABLE}.ref_query

  - dimension: ref_scheme
    type: string
    sql: ${TABLE}.ref_scheme

  - dimension: referrer
    type: string
    sql: ${TABLE}.referrer

  - dimension: session
    type: yesno
    sql: ${TABLE}.session

  - dimension: session_id
    type: number
    sql: ${TABLE}.session_id

  - dimension: session_initial_referrer
    type: string
    sql: ${TABLE}.session_initial_referrer

  - dimension: session_initial_url
    type: string
    sql: ${TABLE}.session_initial_url

  - dimension: session_last_session_timestamp
    type: number
    sql: ${TABLE}.session_last_session_timestamp

  - dimension: session_timestamp
    type: number
    sql: ${TABLE}.session_timestamp

  - dimension: slot
    type: yesno
    sql: ${TABLE}.slot

  - dimension: slot_url
    type: string
    sql: ${TABLE}.slot_url

  - dimension: slot_x
    type: number
    sql: ${TABLE}.slot_x

  - dimension: slot_xpath
    type: string
    sql: ${TABLE}.slot_xpath

  - dimension: slot_y
    type: number
    sql: ${TABLE}.slot_y

  - dimension: sref_category
    type: string
    sql: ${TABLE}.sref_category

  - dimension: sref_clean
    type: string
    sql: ${TABLE}.sref_clean

  - dimension: sref_domain
    type: string
    sql: ${TABLE}.sref_domain

  - dimension: sref_fragment
    type: string
    sql: ${TABLE}.sref_fragment

  - dimension: sref_netloc
    type: string
    sql: ${TABLE}.sref_netloc

  - dimension: sref_params
    type: string
    sql: ${TABLE}.sref_params

  - dimension: sref_path
    type: string
    sql: ${TABLE}.sref_path

  - dimension: sref_query
    type: string
    sql: ${TABLE}.sref_query

  - dimension: sref_scheme
    type: string
    sql: ${TABLE}.sref_scheme

  - dimension: surl_clean
    type: string
    sql: ${TABLE}.surl_clean

  - dimension: surl_domain
    type: string
    sql: ${TABLE}.surl_domain

  - dimension: surl_fragment
    type: string
    sql: ${TABLE}.surl_fragment

  - dimension: surl_netloc
    type: string
    sql: ${TABLE}.surl_netloc

  - dimension: surl_params
    type: string
    sql: ${TABLE}.surl_params

  - dimension: surl_path
    type: string
    sql: ${TABLE}.surl_path

  - dimension: surl_query
    type: string
    sql: ${TABLE}.surl_query

  - dimension: surl_scheme
    type: string
    sql: ${TABLE}.surl_scheme

  - dimension: surl_utm_campaign
    type: string
    sql: ${TABLE}.surl_utm_campaign

  - dimension: surl_utm_content
    type: string
    sql: ${TABLE}.surl_utm_content

  - dimension: surl_utm_medium
    type: string
    sql: ${TABLE}.surl_utm_medium

  - dimension: surl_utm_source
    type: string
    sql: ${TABLE}.surl_utm_source

  - dimension: surl_utm_term
    type: string
    sql: ${TABLE}.surl_utm_term

  - dimension: timestamp_info
    type: yesno
    sql: ${TABLE}.timestamp_info

  - dimension: timestamp_info_nginx_ms
    type: number
    sql: ${TABLE}.timestamp_info_nginx_ms

  - dimension: timestamp_info_override_ms
    type: number
    sql: ${TABLE}.timestamp_info_override_ms

  - dimension: timestamp_info_pixel_ms
    type: number
    sql: ${TABLE}.timestamp_info_pixel_ms

  - dimension: ts_action
    type: string
    sql: ${TABLE}.ts_action

  - dimension: ts_session_current
    type: string
    sql: ${TABLE}.ts_session_current

  - dimension: ts_session_last
    type: string
    sql: ${TABLE}.ts_session_last

  - dimension: ua_browser
    type: string
    sql: ${TABLE}.ua_browser

  - dimension: ua_browserversion
    type: string
    sql: ${TABLE}.ua_browserversion

  - dimension: ua_device
    type: string
    sql: ${TABLE}.ua_device

  - dimension: ua_devicebrand
    type: string
    sql: ${TABLE}.ua_devicebrand

  - dimension: ua_devicemodel
    type: string
    sql: ${TABLE}.ua_devicemodel

  - dimension: ua_devicetouchcapable
    type: yesno
    sql: ${TABLE}.ua_devicetouchcapable

  - dimension: ua_devicetype
    type: string
    sql: ${TABLE}.ua_devicetype

  - dimension: ua_os
    type: string
    sql: ${TABLE}.ua_os

  - dimension: ua_osversion
    type: string
    sql: ${TABLE}.ua_osversion

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - dimension: url_clean
    type: string
    sql: ${TABLE}.url_clean

  - dimension: url_domain
    type: string
    sql: ${TABLE}.url_domain

  - dimension: url_fragment
    type: string
    sql: ${TABLE}.url_fragment

  - dimension: url_netloc
    type: string
    sql: ${TABLE}.url_netloc

  - dimension: url_params
    type: string
    sql: ${TABLE}.url_params

  - dimension: url_path
    type: string
    sql: ${TABLE}.url_path

  - dimension: url_query
    type: string
    sql: ${TABLE}.url_query

  - dimension: url_scheme
    type: string
    sql: ${TABLE}.url_scheme

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - dimension: utm_campaign
    type: string
    sql: ${TABLE}.utm_campaign

  - dimension: utm_content
    type: string
    sql: ${TABLE}.utm_content

  - dimension: utm_medium
    type: string
    sql: ${TABLE}.utm_medium

  - dimension: utm_source
    type: string
    sql: ${TABLE}.utm_source

  - dimension: utm_term
    type: string
    sql: ${TABLE}.utm_term

  - dimension: version
    type: number
    sql: ${TABLE}.version

  - dimension: visitor
    type: yesno
    sql: ${TABLE}.visitor

  - dimension: visitor_ip
    type: string
    sql: ${TABLE}.visitor_ip

  - dimension: visitor_network_id
    type: string
    sql: ${TABLE}.visitor_network_id

  - dimension: visitor_site_id
    type: string
    sql: ${TABLE}.visitor_site_id

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

