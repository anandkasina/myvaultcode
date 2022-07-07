provider "vault" {
  address = var.vault_address
  token   = "hvs.0F8m6ealq5Ij0I10TfUoR0L4"
}

provider "aws" {
  region     = var.region
  access_key = data.vault_aws_access_credentials.aws.access_key
  secret_key = data.vault_aws_access_credentials.aws.secret_key
}
