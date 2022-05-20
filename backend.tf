terraform {
  backend "s3" {
    bucket = "bucket-terraform"
    key    = "files"
    region = "eu-central-1"
  }
}
