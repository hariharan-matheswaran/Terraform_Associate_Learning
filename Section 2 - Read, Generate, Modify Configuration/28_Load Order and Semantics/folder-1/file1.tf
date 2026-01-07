resource "local_file" "foo" {
  content  = "Hello from KPLABS!"
  filename = "${path.module}/kplabs.txt"
}