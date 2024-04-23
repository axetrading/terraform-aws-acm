# terraform-aws-acm
<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.acm"></a> [aws.acm](#provider\_aws.acm) | 5.46.0 |
| <a name="provider_aws.validator"></a> [aws.validator](#provider\_aws.validator) | 5.46.0 |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_assume_role_arn"></a> [acm\_assume\_role\_arn](#input\_acm\_assume\_role\_arn) | The ARN of the role to assume when creating the ACM certificate. | `string` | `null` | no |
| <a name="input_acm_region"></a> [acm\_region](#input\_acm\_region) | AWS Region where the ACM certificate should be created. | `string` | `"eu-west-2"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name for which the certificate should be issued | `string` | n/a | yes |
| <a name="input_hosted_zone_account_id"></a> [hosted\_zone\_account\_id](#input\_hosted\_zone\_account\_id) | Hosted Zone AWS Account id | `string` | `null` | no |
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | AWS Route 53 hosted zone name | `string` | n/a | yes |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | Set of domains that should be SANs in the issued certificate. | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of AWS Tags | `map(string)` | `{}` | no |
| <a name="input_validation_method"></a> [validation\_method](#input\_validation\_method) | Which method to use for validation. DNS \| EMAIL \| NONE can be used. | `string` | `"DNS"` | no |
| <a name="input_validator_region"></a> [validator\_region](#input\_validator\_region) | AWS Region where the Route53 validation records should be created. | `string` | `"eu-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | The ARN of the certificate |
| <a name="output_acm_certificate_domain_name"></a> [acm\_certificate\_domain\_name](#output\_acm\_certificate\_domain\_name) | The domain name for which the certificate is issued |
| <a name="output_acm_certificate_domain_validation_options"></a> [acm\_certificate\_domain\_validation\_options](#output\_acm\_certificate\_domain\_validation\_options) | A list of attributes to feed into other resources to complete certificate validation. Can have more than one element, e.g. if SANs are defined. Only set if DNS-validation was used. |
<!-- END_TF_DOCS -->