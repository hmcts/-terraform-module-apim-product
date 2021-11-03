output "product_terms" {
  value = data.azurerm_api_management_product.apim_product.terms
}
output "product_id" {
  value = data.azurerm_api_management_product.apim_product.id
}
output "product_display_name" {
  value = data.azurerm_api_management_product.apim_product.display_name
}
