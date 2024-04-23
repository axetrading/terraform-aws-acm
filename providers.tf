provider "aws" {
  alias  = "acm"
  region = var.acm_region
  assume_role {
    role_arn = var.acm_assume_role_arn
  }
}

provider "aws" {
  alias  = "validator"
  region = var.validator_region
}