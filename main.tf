
resource "aws_vpc" "development_vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      Name="development_vpc"
    }
  
}
resource "aws_subnet" "dev_subnet-1" {
    vpc_id = aws_vpc.development_vpc.id
    cidr_block = var.subnet-cidr-block
    availability_zone = "eu-west-2b"
    tags= {

    Name = "dev-subnet-1"
    env = "test"
  
}
}
# data "aws_vpc" "existing_vpc" {
#     default = true
  
# }

# resource "aws_subnet" "dev-subnet-2" {
#     vpc_id = data.aws_vpc.existing_vpc.id
#     cidr_block = "172.31.48.0/20"
#     tags = {
#       Name= "existing_vpc-subnet"
#       env = "testing"
#     }
# }

  
