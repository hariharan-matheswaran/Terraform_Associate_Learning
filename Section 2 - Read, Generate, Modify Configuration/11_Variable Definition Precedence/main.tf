resource "aws_instance" "web"{
  ami = var.ami_id
  instance_type = var.instance_type
}

/*PRECEDENCE
LATER SOURCES TAKING PRECENDENCE OVER EARLIER ONES 
0. default value in variable definition (least precedence)
1. ENVIRONMENT VARIABLE
2. terraform.tfvars --> if value present
3. terraform.tfvars.json --> if value present
4. Any *.auto.tfvars
   Any *.auto.tfvars.json
5. Command line options --> -var and -var-file (most precedence)
*/