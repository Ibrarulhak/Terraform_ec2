terraform {
    backend "s3" {
        bucket = "terraform-statefile3"
        key = "terraform.tfstate" # Path to the state file in the bucket
        region = "us-west-1"

    }
}