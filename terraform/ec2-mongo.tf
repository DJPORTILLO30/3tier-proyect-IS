resource "aws_instance" "ec2-mongodb" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.private.id]
  subnet_id = "${aws_subnet.private-subnet-1.id}"
  user_data = data.template_file.user_data_backend.rendered
  key_name = aws_key_pair.generated_key.key_name
  security_groups =  [
    aws_security_group.private.id,
    aws_security_group.ec2-mongodb.id
  ]
  tags = {
    Name        = "${local.prefix}-ec2-mongodb"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ec2-mongodb.tf"
  }
  depends_on = [ aws_security_group.private,aws_subnet.private-subnet-1 , aws_instance.ec2-private-1 ]
}