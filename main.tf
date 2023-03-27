provider "aws" {
  region = var.region
}

resource "aws_vpc" "abhi" {
  cidr_block = var.vpc-range-abhi
  tags = {
    Name = "abhi"
  }
}

resource "aws_subnet" "app1" {
  vpc_id            = aws_vpc.abhi.id
  cidr_block        = var.app1-cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "app1"
  }
}

resource "aws_subnet" "web1" {
  vpc_id            = aws_vpc.abhi.id
  cidr_block        = var.web1-cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "app1"
  }
}

resource "aws_subnet" "app2" {
  vpc_id            = aws_vpc.abhi.id
  cidr_block        = var.app2-cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "app2"
  }
}

resource "aws_subnet" "web2" {
  vpc_id            = aws_vpc.abhi.id
  cidr_block        = var.web2-cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "web2"
  }
}