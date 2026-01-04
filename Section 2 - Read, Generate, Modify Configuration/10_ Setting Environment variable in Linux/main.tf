resource "aws_instance" "web"{
  ami = var.ami_id
  instance_type = var.instance_type
}

/*Creating ENV Variable in Linux
export TF_VAR_instance_type=m5.large

Verify ENV Variable
echo $TF_VAR_instance_type
*/