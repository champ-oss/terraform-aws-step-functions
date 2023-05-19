terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-east-2"
}

data "aws_region" "current" {}

module "this" {
  source = "../../"
  name   = "hello-world"
  definition = {
    "Comment" : "hello world example",
    "StartAt" : "Hello",
    "States" : {
      "Hello" : {
        "Type" : "Pass",
        "Result" : "Hello",
        "Next" : "World"
      },
      "World" : {
        "Type" : "Pass",
        "Result" : "World",
        "End" : true
      }
    }
  }
}