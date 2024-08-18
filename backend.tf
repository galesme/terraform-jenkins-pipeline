terraform {
  backend "s3" {
    bucket         = "terraform-jenkins-pipeline-backend-bucket"
    key            = "tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-jenkins-pipeline"
  }
}
