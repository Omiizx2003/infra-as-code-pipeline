terraform {

  backend "s3" {

    bucket = "terraform-state-omii-2026"

    key = "ecs-capstone/terraform.tfstate"

    region = "ap-south-1"

    dynamodb_table = "terraform-locks"

    encrypt = true
  }

}