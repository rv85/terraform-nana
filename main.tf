provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAY3W3NGAUDBPY4DPW"
    secret_key = "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"
  
}
resource "aws_vpc" "development_vpc" {
    cidr_block = "10.0.0.0/16"
  
}
resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development_vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "eu-west-2"
  
}