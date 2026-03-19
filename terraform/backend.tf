# Uncomment this block after creating a remote S3 backend for state management
#
# SETUP INSTRUCTIONS:
# 1. First run:    terraform init
# 2. Deploy the S3 backend bucket using a separate Terraform root module or AWS CLI
# 3. Then uncomment the backend block below
# 4. Finally run:  terraform init -migrate-state
#    (This will migrate your local state to the remote S3 backend)
#
# terraform {
#   backend "s3" {
#     bucket         = "abayomiigwubordmi-terraform-state"
#     key            = "website/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }
