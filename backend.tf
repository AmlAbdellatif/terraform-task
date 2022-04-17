terraform {
  backend "s3" {
    bucket = "terraform-bucket-day1"
    key    = "files"
    region = "eu-west-1"
  }
}