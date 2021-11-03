variable "product" {
  type        = string
  description = "Project Product name"
}
variable "env" {
  type        = string
  description = "Environment Name"
}
variable "department" {
  type        = string
  description = "HMCTS Department"
  default     = "sds"
  validation {
    condition     = var.department == "sds" || var.department == "cft"
    error_message = "HMCTS Department must be sds or cft."
  }
}

## Product
variable "product_display_name" {
  type        = string
  description = "APIM Product Display Name"
  default     = ""
}
variable "product_discription" {
  type        = string
  description = "APIM Product Discription"
  default     = ""
}
variable "product_subscription_required" {
  type        = bool
  description = "APIM Product Subscription Required"
  default     = false
}
variable "product_published" {
  type        = bool
  description = "APIM Product Published"
  default     = true
}
variable "product_approval_required" {
  type        = bool
  description = "APIM Product Approval Required"
  default     = false
}
variable "product_policy" {
  type        = string
  description = "APIM Product Policy"
  default     = ""
}

## API User
variable "user_id" {
  type        = string
  description = "APIM User ID"
  default     = ""
}
variable "user_has_password" {
  type        = bool
  description = "APIM User requires password"
  default     = false
}
