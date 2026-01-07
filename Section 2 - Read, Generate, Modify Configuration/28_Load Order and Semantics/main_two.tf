resource "local_file" "foo" {
  content  = "Hello from KPLABS!"
  filename = "${path.module}/kplabs_2.txt"
}