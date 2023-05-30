resource "aws_instance" "ec2-public-1" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  count = 1
  vpc_security_group_ids = ["${aws_security_group.public.id}"]
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  key_name = aws_key_pair.generated_key.key_name
  tags = {
    Name        = "${local.prefix}-ec2-public-1"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ec2-public.tf"
  }
  depends_on = [ aws_security_group.public,aws_subnet.public-subnet-1 ]
}


resource "aws_instance" "ec2-public-2" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  count = 1
  vpc_security_group_ids = ["${aws_security_group.public.id}"]
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  key_name = aws_key_pair.generated_key.key_name
  tags = {
    Name        = "${local.prefix}-ec2-public-2"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ec2-public.tf"
  }
  depends_on = [ aws_security_group.public,aws_subnet.public-subnet-1 ]
}