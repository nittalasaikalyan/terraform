#resource "aws_s3_bucket" "example" {
  #bucket = "kalyan-bucket-24.12.2023"

  #tags = {
    #Name        = "My bucket"
    #Environment = "Prod"
  #}
#}
#resource "aws_instance" "app_server" {
  #count = 2
  #ami           = var.ami_id
  #instance_type = "t2.micro"
  #key_name = "user23"
  #security_groups = [aws_security_group.example.name]

  #tags = {
    #Name = "instancecount.${count.index}"
  #}
#user_data= file("${path.module}/nginx.sh")
#}
#resource "aws_security_group" "example" {
 #name        = "web-server-sg-tf"
 #description = "Allow HTTPS to web server"

#ingress {
   #description = "HTTPS ingress"
   #from_port   = 22
   #to_port     = 22
   #protocol    = "tcp"
   #cidr_blocks = ["0.0.0.0/0"]
 #}
#ingress {
   #description = "HTTPS ingress"
   #from_port   = 80
   #to_port     = 80
   #protocol    = "tcp"
   #cidr_blocks = ["0.0.0.0/0"]
 #}
#egress {
   #from_port   = 0
   #to_port     = 0
   #protocol    = "-1"
   #cidr_blocks = ["0.0.0.0/0"]
 #}
#}
resource "aws_vpc" "main" {
  cidr_block       = "16.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "user23_vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "16.0.1.0/24"

  tags = {
    Name = "user23_subnet"
  }
}
