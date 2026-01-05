data "aws_instances" "example" {
  filter {
    name   = "tag:Team"
    values = ["Development"]
  }
}