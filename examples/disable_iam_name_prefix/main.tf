module "this" {
  source                      = "../../"
  name                        = "disable-iam-name-prefix"
  enable_iam_role_name_prefix = false
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