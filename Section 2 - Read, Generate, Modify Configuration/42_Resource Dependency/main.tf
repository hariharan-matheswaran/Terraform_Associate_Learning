resource "aws_instance" "web"{
    ami = "ami-0360c520857e3138f"
    instance_type = "t3.micro"
    depends_on = [aws_s3_bucket.example]
}

resource "aws_s3_bucket" "example"{
    bucket  = "bucket-sample-007-150699"
}