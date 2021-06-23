resource "aws_instance" "TNPServer" {
  ami                    = var.tnp_server_ec2_ami
  instance_type          = var.tnp_server_ec2_instance_type
  count                  = var.tnp_server_ec2_count
  tags                   = var.tnp_server_ec2_tags_private
  vpc_security_group_ids = var.sg_id_02
  // ["${aws_security_group.sg_02.id}"]
  subnet_id              = var.subnet_private_id
  #key_name               = var.ec2_key_pair
}
