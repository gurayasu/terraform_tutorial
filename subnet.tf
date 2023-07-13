resource "aws_subnet" "public-subnet-1a" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1a"
  }
}

resource "aws_subnet" "public-subnet-1c" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1c"
  }
}

resource "aws_subnet" "purivate-subnet-1a" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "praivate-subnet-1a"
  }
}

resource "aws_subnet" "privatec-subnet-1c" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "raivatec-subnet-1c"
  }
}

resource "aws_db_subnet_group" "db-sg" {
  name = "db_sg"
  subnet_ids = [
    aws_subnet.purivate-subnet-1a.id,
    aws_subnet.privatec-subnet-1c.id
  ]
}