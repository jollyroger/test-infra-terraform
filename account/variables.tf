variable "environments" {
  description = "List of environments"
  type        = list
  default     = [
    "dev",
    "qa",
    "prod"
  ]
}
