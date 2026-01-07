resource "aws_instance" "myec2" {
    ami = "ami-0360c520857e3138f"
    instance_type = "t3.micro"

    tags = {
        "Name":"Hari"
    }

    lifecycle{
        create_before_destroy = true
    }
}