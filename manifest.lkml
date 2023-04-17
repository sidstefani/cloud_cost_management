
#Remove the specific values from the marketplace block and add in specific access and data connectors from the client
################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "sidney-stefani.testing_looker.detailed_billing_data"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "billing-logs-359516.detailed_sku_prices.cloud_pricing_export"
  export: override_optional
}

constant: CONNECTION {
  value: "pso-eng"
  export: override_optional
}
