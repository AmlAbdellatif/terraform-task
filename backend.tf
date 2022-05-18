terraform {
  backend "s3" {
    bucket = "my-bucket-terraform"
    key    = "files"
    region = "eu-central-1"
  }
}
