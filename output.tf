output "product_id" {
  value = azurerm_api_management_product.apim_product.id
}

output "user_id" {
  value = azurerm_api_management_user.apim_user[*].id
}
output "user_user_id" {
  value = azurerm_api_management_user.apim_user[*].user_id
}
output "user_password" {
  value     = random_password.user_password.result
  sensitive = true
}
output "user_state" {
  value = azurerm_api_management_user.apim_user[*].state
}

output "subscription_id" {
  value = azurerm_api_management_subscription.apim_subscription.id
}
output "subscription_primary_key" {
  value     = azurerm_api_management_subscription.apim_subscription.primary_key
  sensitive = true
}