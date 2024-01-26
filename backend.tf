terraform {
  backend "s3" {
    bucket = "fesette-s3-oregon"
    key    = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true
  }
}
