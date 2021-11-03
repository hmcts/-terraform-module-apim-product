locals {
  env       = (var.env == "aat") ? "stg" : (var.env == "sandbox") ? "sbox" : "${(var.env == "perftest") ? "test" : "${var.env}"}"
  apim_name = "${var.department}-api-mgmt-${local.env}"
  apim_rg   = var.department == "sds" ? "ss-${local.env}-network-rg" : var.env == "sbox" || var.env == "perftest" || var.env == "aat" || var.env == "ithc" ? "cft-${var.env}-network-rg" : "aks-infra-${var.env}-rg"
}

data "azurerm_api_management_product" "apim_product" {
  product_id          = "${var.product}-product-${local.env}"
  resource_group_name = local.apim_rg
  api_management_name = local.apim_name
}

