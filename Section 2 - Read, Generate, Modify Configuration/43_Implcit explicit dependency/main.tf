resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.prod.id] #IMPLICIT DEPENDENCY
  depends_on = [] #EXPLICIT DEPENDENCY
}

resource "aws_security_group" "prod" {
  name        = "production-sg"
}

resource "aws_s3_bucket" "name" {
  bucket = "my-bucket-007-hariharan"
}