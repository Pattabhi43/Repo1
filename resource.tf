resource "aws_vpc" "vpc-01" {
  cidr_block = var.cidr_block
}
/*
resource "aws_subnet" "subnet-01" {
  vpc_id     = aws_vpc.vpc-01.id
  cidr_block = "10.0.0.0/24"
}

locals {
  tag-name = aws_instance.ec2-01.key_name
}
*/

resource "aws_iam_user" "user3" {
  name          = "module-user"
  path          = "/"
  force_destroy = "false"
}

resource "aws_dynamodb_table" "table-01" {
  name           = "table-01"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
/*
resource "aws_instance" "ec2-01" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = aws_subnet.subnet-01.id
  key_name          = "SourceServer"
  tags = {
    "Name" = "$(local.tag-name)"
  }
}
*/
