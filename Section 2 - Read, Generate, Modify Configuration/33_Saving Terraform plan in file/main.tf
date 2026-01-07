resource "local_file" "foo"{
  content = "Hello World_from 2nd file"
  filename  = "terraform2.txt"
}