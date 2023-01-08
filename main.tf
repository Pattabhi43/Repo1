
terraform {                                                     #This indicates the terraform declaration#
  required_providers {
    aws = {
      source  = "hashicorp/aws"                                 #From where the provider is getting downloaded#
      version = "= 3.74.2"                                      #Version of AWS which is used#
    }
  }

  backend "s3" {                                                #Backend operations block. Here s3 is declared for state files#
    bucket         = "attempt-bucket1"                          #Buket name#
    key            = "folder1/trial.tfstate"                    #Bucket Path#
    region         = "ap-south-1"                               #Region in which it is operated#
    profile        = "Pattabhi Ramaiah Konakanchi"              #User name#
    dynamodb_table = "table-01"                                 #Name of the dynamo DB table#
  }

}
# Configure the AWS Provider
provider "aws" {                                                #Provider Block initiated#
  region     = "ap-south-1"                                     
  access_key = "AKIAZJMM3CBGS2PKFFGD"                           #Unique access key given to the user#
  secret_key = "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"       #Unique secret key given to the user#
}

