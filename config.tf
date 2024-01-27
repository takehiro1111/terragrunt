# #=============================================
# #Terraform Block
# #=============================================
terraform {
  required_version = "1.6.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }

  }

  #１人開発用のため、staqteファイルはローカルで管理している。
  backend "s3" {
  // terragruntを使用する場合はkeyもコメントアウト
    #key     = "terragrunt"
    #region  = "ap-northeast-1"

    #共通設定は./backend.hclへ分離
  /*  bucket  = "terraform-state-hashicorp"
    region  = "ap-northeast-1"
    acl     = "private"
    encrypt = true
    dynamodb_table = "tfstate-locks" */
  }

  #local切り替えが必要な際に使用するためコメントアウトで保管。
  /* backend "local" {
  path = "tfstate/terraform-state"
} */
}

# terraform {
#   required_version = "1.6.5"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.26.0"
#     }
#   }
#   backend "s3" {}
# }

# #=============================================
# #Provider Block
# #=============================================
provider "aws" {
  region  = "ap-northeast-1"
  profile = "sekigaku"
}