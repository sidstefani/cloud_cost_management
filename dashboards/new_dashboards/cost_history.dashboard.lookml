- dashboard: cost_history
  title: Cost History
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - type: button
    name: button_689
    rich_content_json: '{"text":"User Guide","description":"User Guide","newTab":true,"alignment":"right","size":"small","style":"FILLED","color":"#5A6874","href":"https://docs.google.com/document/d/1LqB3XHoCSCkIqIm4qyMLmCMetl3bSzTHZZTJC3Nuv1Y/edit?usp=share_link"}'
    row: 0
    col: 0
    width: 24
    height: 1
  - title: Current Month
    name: Current Month
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_net_cost]
    filters:
      gcp_billing_export.usage_start_month: 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#112B4A"
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Service Type: gcp_billing_export.service__description
      Is Marketplace Purchase? (Yes / No): pricing_mapping.marketplace_purchase
      Category: gcp_billing_export.category
    row: 1
    col: 0
    width: 12
    height: 2
  - title: Last Month
    name: Last Month
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_net_cost]
    filters:
      gcp_billing_export.usage_start_month: 1 months ago for 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#112B4A"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_net_cost:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Service Type: gcp_billing_export.service__description
      Is Marketplace Purchase? (Yes / No): pricing_mapping.marketplace_purchase
      Category: gcp_billing_export.category
    row: 1
    col: 12
    width: 12
    height: 2
  - title: New Tile
    name: New Tile
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.total_cost, gcp_billing_export.category_selected,
      gcp_billing_export.timeframe_selection]
    pivots: [gcp_billing_export.category_selected]
    filters:
      gcp_billing_export.usage_start_month: 12 months ago for 12 months
    sorts: [gcp_billing_export.category_selected, gcp_billing_export.timeframe_selection]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: left
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: AlloyDB - gcp_billing_export.total_net_cost,
            id: AlloyDB - gcp_billing_export.total_net_cost, name: AlloyDB}, {axisId: Anthos
              - gcp_billing_export.total_net_cost, id: Anthos - gcp_billing_export.total_net_cost,
            name: Anthos}, {axisId: Anthos / GDC-V - gcp_billing_export.total_net_cost,
            id: Anthos / GDC-V - gcp_billing_export.total_net_cost, name: Anthos /
              GDC-V}, {axisId: Anthos Config Management - gcp_billing_export.total_net_cost,
            id: Anthos Config Management - gcp_billing_export.total_net_cost, name: Anthos
              Config Management}, {axisId: Anthos Service Mesh - gcp_billing_export.total_net_cost,
            id: Anthos Service Mesh - gcp_billing_export.total_net_cost, name: Anthos
              Service Mesh}, {axisId: API Gateway - gcp_billing_export.total_net_cost,
            id: API Gateway - gcp_billing_export.total_net_cost, name: API Gateway},
          {axisId: App Engine - gcp_billing_export.total_net_cost, id: App Engine
              - gcp_billing_export.total_net_cost, name: App Engine}, {axisId: Artifact
              Registry - gcp_billing_export.total_net_cost, id: Artifact Registry
              - gcp_billing_export.total_net_cost, name: Artifact Registry}, {axisId: BigQuery
              - gcp_billing_export.total_net_cost, id: BigQuery - gcp_billing_export.total_net_cost,
            name: BigQuery}, {axisId: BigQuery BI Engine - gcp_billing_export.total_net_cost,
            id: BigQuery BI Engine - gcp_billing_export.total_net_cost, name: BigQuery
              BI Engine}, {axisId: BigQuery Reservation API - gcp_billing_export.total_net_cost,
            id: BigQuery Reservation API - gcp_billing_export.total_net_cost, name: BigQuery
              Reservation API}, {axisId: BigQuery Storage API - gcp_billing_export.total_net_cost,
            id: BigQuery Storage API - gcp_billing_export.total_net_cost, name: BigQuery
              Storage API}, {axisId: Binary Authorization - gcp_billing_export.total_net_cost,
            id: Binary Authorization - gcp_billing_export.total_net_cost, name: Binary
              Authorization}, {axisId: Certificate Authority Service - gcp_billing_export.total_net_cost,
            id: Certificate Authority Service - gcp_billing_export.total_net_cost,
            name: Certificate Authority Service}, {axisId: Citrix Virtual Apps and
              Desktops Service for Google Cloud - gcp_billing_export.total_net_cost,
            id: Citrix Virtual Apps and Desktops Service for Google Cloud - gcp_billing_export.total_net_cost,
            name: Citrix Virtual Apps and Desktops Service for Google Cloud}, {axisId: Cloud
              Bigtable - gcp_billing_export.total_net_cost, id: Cloud Bigtable - gcp_billing_export.total_net_cost,
            name: Cloud Bigtable}, {axisId: Cloud Build - gcp_billing_export.total_net_cost,
            id: Cloud Build - gcp_billing_export.total_net_cost, name: Cloud Build},
          {axisId: Cloud Data Loss Prevention - gcp_billing_export.total_net_cost,
            id: Cloud Data Loss Prevention - gcp_billing_export.total_net_cost, name: Cloud
              Data Loss Prevention}, {axisId: Cloud Dataflow - gcp_billing_export.total_net_cost,
            id: Cloud Dataflow - gcp_billing_export.total_net_cost, name: Cloud Dataflow},
          {axisId: Cloud DNS - gcp_billing_export.total_net_cost, id: Cloud DNS -
              gcp_billing_export.total_net_cost, name: Cloud DNS}, {axisId: Cloud
              Filestore - gcp_billing_export.total_net_cost, id: Cloud Filestore -
              gcp_billing_export.total_net_cost, name: Cloud Filestore}, {axisId: Cloud
              Functions - gcp_billing_export.total_net_cost, id: Cloud Functions -
              gcp_billing_export.total_net_cost, name: Cloud Functions}, {axisId: Cloud
              Key Management Service (KMS) - gcp_billing_export.total_net_cost, id: Cloud
              Key Management Service (KMS) - gcp_billing_export.total_net_cost, name: Cloud
              Key Management Service (KMS)}, {axisId: Cloud Logging - gcp_billing_export.total_net_cost,
            id: Cloud Logging - gcp_billing_export.total_net_cost, name: Cloud Logging},
          {axisId: Cloud Machine Learning Engine - gcp_billing_export.total_net_cost,
            id: Cloud Machine Learning Engine - gcp_billing_export.total_net_cost,
            name: Cloud Machine Learning Engine}, {axisId: Cloud Memorystore for Redis
              - gcp_billing_export.total_net_cost, id: Cloud Memorystore for Redis
              - gcp_billing_export.total_net_cost, name: Cloud Memorystore for Redis},
          {axisId: Cloud Pub/Sub - gcp_billing_export.total_net_cost, id: Cloud Pub/Sub
              - gcp_billing_export.total_net_cost, name: Cloud Pub/Sub}, {axisId: Cloud
              Run - gcp_billing_export.total_net_cost, id: Cloud Run - gcp_billing_export.total_net_cost,
            name: Cloud Run}, {axisId: Cloud Scheduler - gcp_billing_export.total_net_cost,
            id: Cloud Scheduler - gcp_billing_export.total_net_cost, name: Cloud Scheduler},
          {axisId: Cloud Spanner - gcp_billing_export.total_net_cost, id: Cloud Spanner
              - gcp_billing_export.total_net_cost, name: Cloud Spanner}, {axisId: Cloud
              SQL - gcp_billing_export.total_net_cost, id: Cloud SQL - gcp_billing_export.total_net_cost,
            name: Cloud SQL}, {axisId: Cloud Storage - gcp_billing_export.total_net_cost,
            id: Cloud Storage - gcp_billing_export.total_net_cost, name: Cloud Storage},
          {axisId: Cloud Tasks - gcp_billing_export.total_net_cost, id: Cloud Tasks
              - gcp_billing_export.total_net_cost, name: Cloud Tasks}, {axisId: Compute
              Engine - gcp_billing_export.total_net_cost, id: Compute Engine - gcp_billing_export.total_net_cost,
            name: Compute Engine}, {axisId: Container Registry Vulnerability Scanning
              - gcp_billing_export.total_net_cost, id: Container Registry Vulnerability
              Scanning - gcp_billing_export.total_net_cost, name: Container Registry
              Vulnerability Scanning}, {axisId: Data Catalog - gcp_billing_export.total_net_cost,
            id: Data Catalog - gcp_billing_export.total_net_cost, name: Data Catalog},
          {axisId: Dataproc - gcp_billing_export.total_net_cost, id: Dataproc - gcp_billing_export.total_net_cost,
            name: Dataproc}, {axisId: Google Click to Deploy Deep Learning VM - gcp_billing_export.total_net_cost,
            id: Google Click to Deploy Deep Learning VM - gcp_billing_export.total_net_cost,
            name: Google Click to Deploy Deep Learning VM}, {axisId: Google Service
              Control - gcp_billing_export.total_net_cost, id: Google Service Control
              - gcp_billing_export.total_net_cost, name: Google Service Control},
          {axisId: Identity Platform - gcp_billing_export.total_net_cost, id: Identity
              Platform - gcp_billing_export.total_net_cost, name: Identity Platform},
          {axisId: Invoice - gcp_billing_export.total_net_cost, id: Invoice - gcp_billing_export.total_net_cost,
            name: Invoice}, {axisId: Kubernetes Engine - gcp_billing_export.total_net_cost,
            id: Kubernetes Engine - gcp_billing_export.total_net_cost, name: Kubernetes
              Engine}, {axisId: Looker - gcp_billing_export.total_net_cost, id: Looker
              - gcp_billing_export.total_net_cost, name: Looker}, {axisId: Managed
              Service for Microsoft Active Directory - gcp_billing_export.total_net_cost,
            id: Managed Service for Microsoft Active Directory - gcp_billing_export.total_net_cost,
            name: Managed Service for Microsoft Active Directory}, {axisId: Networking
              - gcp_billing_export.total_net_cost, id: Networking - gcp_billing_export.total_net_cost,
            name: Networking}, {axisId: Notebooks - gcp_billing_export.total_net_cost,
            id: Notebooks - gcp_billing_export.total_net_cost, name: Notebooks}, {
            axisId: On-Demand Scanning - gcp_billing_export.total_net_cost, id: On-Demand
              Scanning - gcp_billing_export.total_net_cost, name: On-Demand Scanning},
          {axisId: 'Palo Alto Networks, Inc. Strata - gcp_billing_export.total_net_cost',
            id: 'Palo Alto Networks, Inc. Strata - gcp_billing_export.total_net_cost',
            name: 'Palo Alto Networks, Inc. Strata'}, {axisId: 'Palo Alto Networks,
              Inc. VM-Series Next-Generation Firewall (BYOL and ELA) - gcp_billing_export.total_net_cost',
            id: 'Palo Alto Networks, Inc. VM-Series Next-Generation Firewall (BYOL
              and ELA) - gcp_billing_export.total_net_cost', name: 'Palo Alto Networks,
              Inc. VM-Series Next-Generation Firewall (BYOL and ELA)'}, {axisId: Secret
              Manager - gcp_billing_export.total_net_cost, id: Secret Manager - gcp_billing_export.total_net_cost,
            name: Secret Manager}], showLabels: true, showValues: true, valueFormat: '[>=1000000]$0.00,,"M";$0.00,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [All Other Services - gcp_billing_export.total_net_cost]
    label_value_format: '[>=1000000]$0.00,,"M";$0.00,"K"'
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#112B4A"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_net_cost:
        is_active: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Service Type: gcp_billing_export.service__description
      Is Marketplace Purchase? (Yes / No): pricing_mapping.marketplace_purchase
      Category: gcp_billing_export.category
      Date Selection: gcp_billing_export.date_selection
    row: 3
    col: 0
    width: 24
    height: 14
  filters:
  - name: Date Selection
    title: Date Selection
    type: field_filter
    default_value: month
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.date_selection
  - name: Category
    title: Category
    type: field_filter
    default_value: service^_description
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.category
  - name: Is Marketplace Purchase? (Yes / No)
    title: Is Marketplace Purchase? (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: pricing_mapping.marketplace_purchase
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 12 month ago for 12 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.usage_start_date
  - name: Service Type
    title: Service Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.service__description