
provider "aws" {
  version             = "~> 3.56.0"
  region              = var.region
  allowed_account_ids = ["959044923143"]
}

terraform {
  backend "s3" {
    bucket = "devops-test-results-1122"
    key    = "devops-test"
    region = "us-east-1"
  }
}
