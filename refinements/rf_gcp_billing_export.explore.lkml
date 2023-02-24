include: "/explores/gcp_billing_export.explore"


explore: +gcp_billing_export {
  aggregate_table: gcp_summary {
    query: {
      dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
        , gcp_billing_export.currency, gcp_billing_export.usage_start_date
      ]
      # filters: [gcp_billing_export.period: "Year"]
      measures: [gcp_billing_export.total_cost, gcp_billing_export__credits.total_amount]
      # timezone: America/Los_Angeles
    }
    materialization: {
      sql_trigger_value: select current_date ;;
    }
  }

  # aggregate_table: gcp_summary_year {
  #   query: {
  #     dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
  #       , gcp_billing_export.currency, gcp_billing_export.usage_start_date] #, gcp_billing_export.period_selected]
  #     # filters: [gcp_billing_export.period: "Year"]
  #     measures: [gcp_billing_export.total_cost]
  #     timezone: America/Los_Angeles
  #   }
  #   materialization: {
  #     sql_trigger_value: select current_date ;;
  #   }
  # }

  # aggregate_table: gcp_summary_quarter {
  #   query: {
  #     dimensions: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name
  #       , gcp_billing_export.currency, gcp_billing_export.usage_start_date]
  #     # , gcp_billing_export.period_selected]
  #     # filters: [gcp_billing_export.period: "Quarter"]
  #     measures: [gcp_billing_export.total_cost]
  #     timezone: America/Los_Angeles
  #   }
  #   materialization: {
  #     sql_trigger_value: select current_date ;;
  #   }
  # }

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
