terraform {
  backend "s3" {
    bucket = "upgrad-sujith"
    key    = "Terraform_state_file/tfstatefile"
    region = "us-east-1"
  }
}