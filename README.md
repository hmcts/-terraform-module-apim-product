# terraform-module-apim-product

This module is to create products within an Api Manager

## Create Example

```terraform
module "apim_product" {
  source        = "git::https://github.com/hmcts/terraform-module-apim-product"
  environment   = "sbox"
  product       = "pip"
  department    = "sds"
  product_policy= "<XML></XML>"
}
```

### Optional User
You can also assign a user to the API, which will be added to the subscription as well.

```terraform
  user_id           = "4nc3098ey32xy2" #must be unique
  user_has_password = true
```
