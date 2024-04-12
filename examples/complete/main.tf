terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = ">= 2.0.0"
    }
  }
}

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
