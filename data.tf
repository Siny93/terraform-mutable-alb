data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-9366"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}