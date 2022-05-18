terraform {
  backend "s3" {
    bucket = "prod-bucket-terraform"
    key    = "files"
    region = "eu-central-1"
  }
}
