variable "domain_name" {
  type        = string
  description = "Domain name for which the certificate should be issued"
}

variable "subject_alternative_names" {
  type        = list(any)
  description = "Set of domains that should be SANs in the issued certificate."
  default     = []
}

variable "validation_method" {
  type        = string
  description = "Which method to use for validation. DNS | EMAIL | NONE can be used."
  default     = "DNS"
}

variable "hosted_zone_name" {
  type        = string
  description = "AWS Route 53 hosted zone name"
}

variable "hosted_zone_account_id" {
  type        = string
  description = "Hosted Zone AWS Account id"
  default     = null
}

variable "acm_assume_role_arn" {
  type        = string
  description = "The ARN of the role to assume when creating the ACM certificate."
  default     = null
}

variable "acm_region" {
  type        = string
  description = "AWS Region where the ACM certificate should be created."
  default     = "eu-west-2"
}

variable "validator_region" {
  type        = string
  description = "AWS Region where the Route53 validation records should be created."
  default     = "eu-west-2"
}

variable "tags" {
  type        = map(string)
  description = "A map of AWS Tags"
  default     = {}
}