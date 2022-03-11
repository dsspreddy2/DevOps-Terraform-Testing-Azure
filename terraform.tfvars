aws_access_key     = "AKIAUD3BFB6IGNSDTK72"
aws_secret_key     = "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"
aws_region         = "us-east-1"
vpc_cidr           = "10.1.0.0/16"
vpc_name           = "terraform-ADV"
Main_Routing_Table = "Terraform_Main_table-Dev"
key_name           = "AWSB31KP"
environment        = "dev"
public_cidrs       = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_cidrs      = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24"]
azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
instance_type = {
  dev  = "t2.nano"
  test = "t2.micro"
  prod = "t2.medium"
}
amis = {
  us-east-1 = "ami-97785bed" # ubuntu 14.04 LTS
  us-east-2 = "ami-f63b1193" # ubuntu 14.04 LTS
  us-west-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
  us-west-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
}
imagename = "ami-04505e74c0741db8d"