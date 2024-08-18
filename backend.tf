terraform {
  backend "s3" {
    bucket         = "terraform-gitlab-cicd-pipeline-backend-galesme"
    key            = "tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-jenkins-pipeline"
  }
}
