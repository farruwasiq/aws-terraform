resource "aws_instance" "this" {
  count            =  length(var.subnet_cidr_block)
  ami              = "ami-0817d428a6fb68645"
  instance_type    = var.instance_type
  subnet_id        =  aws_subnet.main[count.index].id

    tags = {
    Name = var.ec2_tag[count.index]
  }
}
