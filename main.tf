resource "aws_instance" "app_server" {
  ami           = "ami-0759f51a90924c166"
  instance_type = "t2.xlarge"
  count = 5
  tags = {
    Name = "test1,test2"
  }
}


