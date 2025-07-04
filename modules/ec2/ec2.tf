resource "aws_instance" "this" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.ssh_key_name
  associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "ec2-instance"
  }
}