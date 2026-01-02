resource "aws_instance" "myfirstEc2" {
  ami           = "ami-0e6a50b0059fd2cc3"
  instance_type = "t3.micro"
  metadata_options {
    http_tokens   = "required"
    http_endpoint = "enabled"
  }
}
