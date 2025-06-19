resource "aws_instance" "webserver1" {
  instance_type = "t2.micro"
  user_data = file("setup.sh") # ✅ CORRECTED
  ami  = "ami-0f88e80871fd81e91"
  subnet_id = module.vpc.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "WebServer-1"
  }
}

resource "aws_instance" "webserver2" {
  instance_type = "t2.micro"
  user_data = file("setup.sh") # ✅ CORRECTED
  ami  = "ami-0f88e80871fd81e91"
  subnet_id = module.vpc.private_subnets[1]
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "WebServer-2"
  }
}


