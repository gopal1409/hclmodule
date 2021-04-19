terraform {
    backend "s3" {
        encrypt = true
        bucket = "terrform-mystate-gopal"
        key= "deploy-stage/terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "terraform-state"
    }
}