terraform {
  backend "s3" {
    bucket = "remotestatebucket1"
    key    = "tfstate/devopsb20.tfstate"
    region = "us-east-1"
  }
}