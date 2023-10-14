resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public_subnets.id}"
  #subnet_id     = "${var.private_subnet}"
  tags = {
    Name = var.instance_name
  }
}

