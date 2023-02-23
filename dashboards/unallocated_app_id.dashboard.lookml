- dashboard: unallocated_app_id
  title: Unallocated App ID
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ygBg58RjdaDIfrayrSxMF9
  elements:
  - title: Unallocated App ID
    name: Unallocated App ID
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.project__name, gcp_billing_export.department_name,
      gcp_billing_export.deployment_type, gcp_billing_export.app_name, gcp_billing_export.service__description,
      gcp_billing_export.sku__description, gcp_billing_export.business_object_id,
      gcp_billing_export.project_environment, gcp_billing_export.project_id, gcp_billing_export.component_id,
      gcp_billing_export.total_net_cost]
    filters:
      gcp_billing_export.app_name: ''
      pricing_mapping.marketplace_purchase: 'No'
      eligible_labels.labeling_supported: 'Yes'
    sorts: [gcp_billing_export.total_net_cost desc 0]
    limit: 1000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: cme-colors
      palette_id: cme-colors-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      total_cost: "#112B4A"
      gcp_billing_export.total_cost: "#3CC8FF"
    label_color: []
    up_color: "#34A853"
    down_color: false
    total_color: "#9AA0A6"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.app_name]
    y_axes: []
    column_order: ["$$$_row_numbers_$$$", gcp_billing_export.project__name, gcp_billing_export.service__description,
      gcp_billing_export.sku__description, gcp_billing_export.department_name, gcp_billing_export.deployment_type,
      gcp_billing_export.business_object_id, gcp_billing_export.project_environment,
      gcp_billing_export.project_id, gcp_billing_export.component_id, gcp_billing_export.total_cost]
    hidden_pivots: {}
    listen:
      Usage Start Date: gcp_billing_export.usage_start_date
      Contact Name: gcp_billing_export.contact_name
      Department Name: gcp_billing_export.department_name
      Project ID: gcp_billing_export.project__id
      Component ID: gcp_billing_export.component_id
      Project Environment: gcp_billing_export.project_environment
      Application Name: applications.name
      Project ID (PMGT - new): gcp_billing_export.cme_project_id
      Project Name: gcp_billing_export.project__name
      Resource App ID: gcp_billing_export.app_id_resource
    row: 7
    col: 0
    width: 24
    height: 12
  - type: button
    name: button_693
    rich_content_json: '{"text":"User Guide","description":"User Guide","newTab":true,"alignment":"right","size":"small","style":"FILLED","color":"#5A6874","href":"https://docs.google.com/document/d/1LqB3XHoCSCkIqIm4qyMLmCMetl3bSzTHZZTJC3Nuv1Y/edit?usp=share_link"}'
    row: 1
    col: 10
    width: 14
    height: 1
  - type: button
    name: button_762
    rich_content_json: '{"text":"Labeled Resources Cost Allocation","description":"Click
      on this link to view all resources that are tagged with a label","newTab":true,"alignment":"left","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cmebilling.cloud.looker.com/dashboards/27?Resource%20Contact%20Name=&Project%20ID%20(PMGT)=&Resource%20Component%20ID=&Resource%20Department%20Name=&Usage%20Start%20Date=1%20year&Is%20Labeling%20Supported%3F%20(Yes%20%2F%20No)=Yes&Application%20Name=&App%20ID%20(Resource)="}'
    row: 1
    col: 0
    width: 9
    height: 1
  - title: Labeled vs Unlabeled Resources (as % of Spend)
    name: Labeled vs Unlabeled Resources (as % of Spend)
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_pie
    fields: [labeled_vs_unlabeled_resources_1, gcp_billing_export.total_net_cost]
    filters:
      pricing_mapping.marketplace_purchase: 'No'
      eligible_labels.labeling_supported: 'Yes'
    sorts: [gcp_billing_export.total_net_cost desc 0]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Labeled vs Unlabeled
          Resources, value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: labeled_vs_unlabeled_resources, args: [gcp_billing_export.app_id_with_unallocated,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Unallocated
                App ID, filter: Unallocated App ID}], Labeled Resources], _kind_hint: dimension,
        _type_hint: string}, {category: dimension, description: '', label: Labeled
          vs Unlabeled Resources, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: labeled_vs_unlabeled_resources_1, args: [
          gcp_billing_export.app_id_resource, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Unallocated App ID, filter: 'NULL'}], Labeled Resources], _kind_hint: dimension,
        _type_hint: string}]
    value_labels: legend
    label_type: labPer
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: cme-colors
      palette_id: cme-colors-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      total_cost: "#112B4A"
      gcp_billing_export.total_cost: "#3CC8FF"
    label_color: []
    up_color: "#34A853"
    down_color: false
    total_color: "#9AA0A6"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    column_order: ["$$$_row_numbers_$$$", gcp_billing_export.project__name, gcp_billing_export.service__description,
      gcp_billing_export.sku__description, gcp_billing_export.department_name, gcp_billing_export.deployment_type,
      gcp_billing_export.business_object_id, gcp_billing_export.project_environment,
      gcp_billing_export.project_id, gcp_billing_export.component_id, gcp_billing_export.total_cost]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: This represents the resources (or projects with a label) eligible to
      be labeled at GCP with (and without) an AppID as a percentage of spend.
    listen:
      Usage Start Date: gcp_billing_export.usage_start_date
      Contact Name: gcp_billing_export.contact_name
      Department Name: gcp_billing_export.department_name
      Project ID: gcp_billing_export.project__id
      Component ID: gcp_billing_export.component_id
      Project Environment: gcp_billing_export.project_environment
      Application Name: applications.name
      Project ID (PMGT - new): gcp_billing_export.cme_project_id
      Project Name: gcp_billing_export.project__name
    row: 2
    col: 8
    width: 7
    height: 5
  - title: Labeled Resources
    name: Labeled Resources
    model: gcp_billing
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_net_cost, labeled_vs_unlabeled_resources_1]
    filters:
      pricing_mapping.marketplace_purchase: 'No'
      eligible_labels.labeling_supported: 'Yes'
      labeled_vs_unlabeled_resources_1: Labeled Resources
    sorts: [gcp_billing_export.total_net_cost desc 0]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Labeled vs Unlabeled
          Resources, value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: labeled_vs_unlabeled_resources, args: [gcp_billing_export.app_id_with_unallocated,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Unallocated
                App ID, filter: Unallocated App ID}], Labeled Resources], _kind_hint: dimension,
        _type_hint: string}, {category: table_calculation, expression: "${gcp_billing_export.total_net_cost}*1",
        label: Total Cost, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: total_cost, _type_hint: number}, {category: dimension,
        description: '', label: Labeled vs Unlabeled Resources, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: labeled_vs_unlabeled_resources_1,
        args: [gcp_billing_export.app_id_resource, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Unallocated App ID, filter: 'NULL'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Labeled Resources, filter: ''}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
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
    header_font_size: '12'
    rows_font_size: '12'
    color_application:
      collection_id: cme-colors
      palette_id: cme-colors-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      total_cost: "#112B4A"
      gcp_billing_export.total_cost: "#3CC8FF"
    label_color: []
    up_color: "#34A853"
    down_color: false
    total_color: "#9AA0A6"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.total_net_cost]
    y_axes: []
    column_order: ["$$$_row_numbers_$$$", gcp_billing_export.project__name, gcp_billing_export.service__description,
      gcp_billing_export.sku__description, gcp_billing_export.department_name, gcp_billing_export.deployment_type,
      gcp_billing_export.business_object_id, gcp_billing_export.project_environment,
      gcp_billing_export.project_id, gcp_billing_export.component_id, gcp_billing_export.total_cost]
    hidden_pivots: {}
    listen:
      Usage Start Date: gcp_billing_export.usage_start_date
      Contact Name: gcp_billing_export.contact_name
      Department Name: gcp_billing_export.department_name
      Project ID: gcp_billing_export.project__id
      Component ID: gcp_billing_export.component_id
      Project Environment: gcp_billing_export.project_environment
      Application Name: applications.name
      Project ID (PMGT - new): gcp_billing_export.cme_project_id
      Project Name: gcp_billing_export.project__name
    row: 4
    col: 0
    width: 8
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: 'This dashboard shows all labelable GCP resources or projects that
      are missing an App ID. '
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  - title: 'Top Ten Unallocated Projects '
    name: 'Top Ten Unallocated Projects '
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_pie
    fields: [gcp_billing_export.project__name, gcp_billing_export.total_net_cost]
    filters:
      gcp_billing_export.project__name: "-NULL"
    sorts: [gcp_billing_export.total_net_cost desc 0]
    limit: 10
    value_labels: legend
    label_type: labPer
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
    stacking: ''
    limit_displayed_rows: false
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Usage Start Date: gcp_billing_export.usage_start_date
      Contact Name: gcp_billing_export.contact_name
      Department Name: gcp_billing_export.department_name
      Project ID: gcp_billing_export.project__id
      Project ID (PMGT - new): gcp_billing_export.cme_project_id
      Component ID: gcp_billing_export.component_id
      Project Environment: gcp_billing_export.project_environment
      Resource App ID: gcp_billing_export.app_id_resource
    row: 2
    col: 15
    width: 9
    height: 5
  - title: Unlabeled Resources
    name: Unlabeled Resources
    model: gcp_billing
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_net_cost, labeled_vs_unlabeled_resources_1]
    filters:
      pricing_mapping.marketplace_purchase: 'No'
      eligible_labels.labeling_supported: 'Yes'
      labeled_vs_unlabeled_resources_1: Unallocated App ID
    sorts: [gcp_billing_export.total_net_cost desc 0]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Labeled vs Unlabeled
          Resources, value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: labeled_vs_unlabeled_resources, args: [gcp_billing_export.app_id_with_unallocated,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Unallocated
                App ID, filter: Unallocated App ID}], Labeled Resources], _kind_hint: dimension,
        _type_hint: string}, {category: table_calculation, expression: "${gcp_billing_export.total_net_cost}*1",
        label: Total Cost, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: total_cost, _type_hint: number}, {category: dimension,
        description: '', label: Labeled vs Unlabeled Resources, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: labeled_vs_unlabeled_resources_1,
        args: [gcp_billing_export.app_id_resource, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Unallocated App ID, filter: 'NULL'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Labeled Resources, filter: ''}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
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
    header_font_size: '12'
    rows_font_size: '12'
    color_application:
      collection_id: cme-colors
      palette_id: cme-colors-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      total_cost: "#112B4A"
      gcp_billing_export.total_cost: "#3CC8FF"
    label_color: []
    up_color: "#34A853"
    down_color: false
    total_color: "#9AA0A6"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.total_net_cost]
    y_axes: []
    column_order: ["$$$_row_numbers_$$$", gcp_billing_export.project__name, gcp_billing_export.service__description,
      gcp_billing_export.sku__description, gcp_billing_export.department_name, gcp_billing_export.deployment_type,
      gcp_billing_export.business_object_id, gcp_billing_export.project_environment,
      gcp_billing_export.project_id, gcp_billing_export.component_id, gcp_billing_export.total_cost]
    hidden_pivots: {}
    listen:
      Usage Start Date: gcp_billing_export.usage_start_date
      Contact Name: gcp_billing_export.contact_name
      Department Name: gcp_billing_export.department_name
      Project ID: gcp_billing_export.project__id
      Component ID: gcp_billing_export.component_id
      Project Environment: gcp_billing_export.project_environment
      Application Name: applications.name
      Project ID (PMGT - new): gcp_billing_export.cme_project_id
      Project Name: gcp_billing_export.project__name
    row: 2
    col: 0
    width: 8
    height: 2
  filters:
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 3 months ago for 3 months
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.usage_start_date
  - name: Contact Name
    title: Contact Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.contact_name
  - name: Department Name
    title: Department Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.department_name
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project__id
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project__name
  - name: Component ID
    title: Component ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.component_id
  - name: Project ID (PMGT - new)
    title: Project ID (PMGT - new)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.cme_project_id
  - name: Project Environment
    title: Project Environment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project_environment
  - name: Application Name
    title: Application Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: applications.name
  - name: Resource App ID
    title: Resource App ID
    type: field_filter
    default_value: 'NULL'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.app_id_resource
