# access_grant: can_view_commit_data {
#   user_attribute: commit_data
#   allowed_values: ["yes"]
# }

# view: spend {
#   required_access_grants: [can_view_commit_data]
#   sql_table_name: `INSERT_TABLE_NAME`
#     ;;

#   dimension: commit_size {
#     type: number
#     hidden: yes
#     sql: ${TABLE}.commit_size ;;
#   }

#   dimension: cumulative_forecast {
#     type: number
#     hidden: yes
#     value_format_name: usd_0
#     sql: ${TABLE}.cumulative_forecast ;;
#   }

#   dimension: cumulative_spend {
#     type: number
#     hidden: yes
#     value_format_name: usd_0
#     sql: ${TABLE}.cumulative_spend ;;
#   }

#   measure: total_spend {
#     type: max
#     hidden: yes
#     value_format_name: usd_0
#     sql: ${cumulative_spend} ;;
#   }

#   measure: total_forecast {
#     type: max
#     hidden: yes
#     value_format_name: usd_0
#     sql: ${cumulative_forecast} ;;
#   }

#   dimension_group: month {
#     type: time
#     label: ""
#     hidden: yes
#     timeframes: [
#       month,
#       year
#     ]
#     datatype: date
#     sql: ${TABLE}.month ;;
#   }

#   measure: count {
#     type: count
#     hidden: yes
#     drill_fields: []
#   }
# }
