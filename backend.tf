terraform {
  backend "s3" {
    # TODO: Create bucket
    bucket = "spiderweb-tfstate"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}