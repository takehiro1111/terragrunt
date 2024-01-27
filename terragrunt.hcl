#===============================
#Terragruntによるstateの管理
#===============================
//カレントディレクトリのstateは管理出来ない。
remote_state {
    backend = "s3"
    
    config = {
    bucket  = "terragrunt-test-new"
    key     = "${path_relative_to_include()}.tfstate"
    region  = "ap-northeast-1"
    acl     = "private"
    encrypt = true
    #dynamodb_table = "tfstate-locks"
    }

   /*  generate = {
    path      = "./config.tf"
    if_exists = "overwrite_terragrunt"
    } */
}

/* generate "provider" {
  path      = "_provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    provider "aws" {
      region = "${local.region_name}"
      default_tags {
        tags = {
          Environment = "${local.env}"
        }
      }
    }
  EOF
} */