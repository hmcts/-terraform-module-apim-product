
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


variable "product" {
  type        = string
  description = "Project Product name"
}
variable "product_display_name" {
  type        = string
  description = "Display Name"
  default     = ""
}
variable "product_discription" {
  type        = string
  description = "Discription"
  default     = ""
}
variable "product_policy" {
  type        = string
  description = "Project Product Policy"
  default     = ""
}
variable "product_approval_required" {
  type        = bool
  description = "Approval required"
  default     = false
}
variable "product_subscription_required" {
  type        = bool
  description = "Subscription required"
  default     = false
}
variable "product_published" {
  type        = bool
  description = "Is Product Published"
  default     = true
}

## User
variable "user_id" {
  type        = string
  description = "Product User ID"
  default     = ""
}
variable "user_has_password" {
  type        = bool
  description = "User should have password"
  default     = true
}
