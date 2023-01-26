
#Remove the specific values from the marketplace block and add in specific access and data connectors from the client
################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "detailed_billing_export.gcp_billing_export_resource_v1_01D318_0476A9_4CF367"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "detailed_sku_prices.cloud_pricing_export"
  export: override_optional
}

constant: CONNECTION {
  value: "looker-private-demo"
  export: override_optional
}
