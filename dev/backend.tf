terraform {
  backend "s3" {
    bucket       = "terraform-3tier-prod-state"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}