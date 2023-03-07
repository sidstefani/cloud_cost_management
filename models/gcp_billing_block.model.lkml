connection: "looker-private-demo"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
label: "Google Cloud Billing"

include: "/datagroups/datagroups.lkml"
# include: "/dashboards/*.dashboard"


include: "/dashboards/original_dashboards/*.dashboard"
include: "/dashboards/new_dashboards/*.dashboard"
include: "/dashboards/updated_dashboards/*.dashboard"



# include: "/dashboards/cud_resource.dashboard.lookml"
# include: "/dashboards/cud_spend.dashboard.lookml"
# include: "/dashboards/cost_allocation.dashboard.lookml"
# include: "/dashboards/big_query_cost_insights.dashboard.lookml"
# include: "/dashboards/cloud_storage_insights.dashboard.lookml"
# include: "/dashboards/compute_engine_insights.dashboard.lookml"
# include: "/dashboards/credit_analysis.dashboard.lookml"
include: "/dashboards/gcp_summary.dashboard.lookml"
include: "/dashboards/gcp_usage_deep_dive.dashboard.lookml"
include: "/dashboards/big_query_deep_dive.dashboard.lookml"
include: "/dashboards/marketplace.dashboard.lookml"
include: "/dashboards/networking_insights.dashboard.lookml"
include: "/dashboards/top_spend.dashboard.lookml"
include: "/dashboards/vmware_insights.dashboard.lookml"

include: "/explores/*.explore"
include: "/refinements/rf_gcp_billing_export.explore"



persist_with: daily_datagroup
