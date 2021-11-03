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