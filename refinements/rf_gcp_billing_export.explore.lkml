include: "/explores/gcp_billing_export.explore"


explore: +gcp_billing_export {
  aggregate_table: gcp_summary {
    query: {
      dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
        , gcp_billing_export.currency, gcp_billing_export.usage_start_date

      ]
       # , pricing_mapping.category
      # filters: [gcp_billing_export.period: "Year"]
      measures: [gcp_billing_export.total_cost] #, gcp_billing_export__credits.total_amount]
    }
    materialization: {
      sql_trigger_value: select current_date ;;
    }
  }

  aggregate_table: bq_insights_dashboard {
    query: {
      dimensions: [gcp_billing_export.usage_start_month, pricing.pricing_type
        , pricing.pricing_category, gcp_billing_export.project__id, gcp_billing_export.service__description
        , gcp_billing_export.usage_start_date, gcp_billing_export.usage__calculated_unit
        , pricing.pricing_usage_type, pricing.pricing_sub_type
        ] #, gcp_billing_export.period_selected]
      # filters: [gcp_billing_export.period: "Year"]
      measures: [gcp_billing_export.usage__amount_in_calculated_units, gcp_billing_export.total_cost]
    }
    materialization: {
      sql_trigger_value: select current_date ;;
    }
  }

  aggregate_table: summary_by_sku {
    query: {
      dimensions: [
        gcp_billing_export.sku__description, gcp_billing_export.usage_start_month
        , gcp_billing_export.usage_start_week
        , gcp_billing_export.project__id, gcp_billing_export.service__description
        ]
      measures: [gcp_billing_export.total_cost]
    }
    materialization: {
      sql_trigger_value: select current_date ;;
    }
  }

  # aggregate_table: gcp_summary_month {
  #   query: {
  #     dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
  #       , gcp_billing_export.currency, gcp_billing_export.usage_start_date]
  #     # , gcp_billing_export.period_selected]
  #     # filters: [gcp_billing_export.period: "Month"]
  #     measures: [gcp_billing_export.total_cost]
  #     timezone: America/Los_Angeles
  #   }
  #   materialization: {
  #     sql_trigger_value: select current_date ;;
  #   }
  # }

  # aggregate_table: gcp_summary_week {
  #   query: {
  #     dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
  #       , gcp_billing_export.currency, gcp_billing_export.usage_start_date, gcp_billing_export.period_selected]
  #     # filters: [gcp_billing_export.period: "Week"]
  #     measures: [gcp_billing_export.total_cost]
  #     timezone: America/Los_Angeles
  #   }
  #   materialization: {
  #     sql_trigger_value: select current_date ;;
  #   }
  # }
}
