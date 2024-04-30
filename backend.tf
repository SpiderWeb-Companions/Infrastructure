terraform {
  backend "s3" {
    bucket = "spiderweb-tfstate"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}