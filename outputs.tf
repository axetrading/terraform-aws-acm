output "acm_certificate_arn" {
  description = "The ARN of the certificate"
  value       = try(aws_acm_certificate.main.arn, "")
}

output "acm_certificate_domain_validation_options" {
  description = "A list of attributes to feed into other resources to complete certificate validation. Can have more than one element, e.g. if SANs are defined. Only set if DNS-validation was used."
  value       = flatten(aws_acm_certificate.main[*].domain_validation_options)
}


output "acm_certificate_domain_name" {
  description = "The domain name for which the certificate is issued"
  value       = try(aws_acm_certificate.main.domain_name, "")
}