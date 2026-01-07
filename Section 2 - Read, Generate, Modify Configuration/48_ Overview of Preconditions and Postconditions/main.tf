variable "instance_type"{
    type = string
}

data "aws_ec2_instance_type" "myec2"{
    instance_type = var.instance_type
}

resource "aws_instance" "myec2"{
    ami = "ami-068c0051b15cdb816"
    instance_type = var.instance_type

    lifecycle{
        precondition {
          condition = data.aws_ec2_instance_type.myec2.free_tier_eligible
          error_message = "Free tier is not eligible"
        }
        postcondition {
          condition = self.public_ip == ""
          error_message = "public ip available"
        }
    }
}