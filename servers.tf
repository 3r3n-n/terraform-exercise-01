resource "aws_instance" "test-ec2-instance" {
  ami = "ami-0f19d220602031aed"
  instance_type = "t2.micro"
  key_name = "myfirstserver"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]

  tags = {
      Name = "my-first-instance-asies"
  }
  subnet_id = "${aws_subnet.subnet-uno.id}"
}