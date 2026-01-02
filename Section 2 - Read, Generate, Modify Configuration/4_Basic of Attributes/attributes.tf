resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"
  
  tags = {
    Name = "WebServerInstance"
  }
}