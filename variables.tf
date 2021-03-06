variable "name" {
  type        = string
  description = "Subscription name, can be changed later without recreating the subscription."
}

variable "type" {
  type        = string
  description = "Subscription offer types `Prod` or `DevTest`. If using `DevTest` the enrollment account must have DevTest enabled, otherwise provisioning will fail."
  default     = "Prod"
  validation {
    condition     = contains(["Prod", "DevTest"], var.type)
    error_message = "Allowed values for subscription type are \"Prod\" or \"DevTest\"."
  }
}
