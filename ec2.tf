resource "aws_instance" "SpiderWeb" {
  depends_on             = [aws_security_group.ec2_security_group]
  ami                    = "ami-0d940f23d527c3ab1"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  count                  = 2
  tags = {
    Name          = "SpiderWeb-${count.index + 1}"
    owner         = "adrian.hawkins@bbd.co.za"
    created-using = "terraform"
  }
}