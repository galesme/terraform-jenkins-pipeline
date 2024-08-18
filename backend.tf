terraform {
  backend "s3" {
    bucket         = "terraform-gitlab-cicd-pipeline-backend-galesme"
    key            = "tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-dynamo-db-table-tf"
  }
}
