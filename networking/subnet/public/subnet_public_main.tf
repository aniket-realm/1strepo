 ####################################################
#   Step2.2 : Public Subnet Creation      #
####################################################
resource "aws_subnet" "subnet_public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.pub_cidr_block
  availability_zone       = var.region
  map_public_ip_on_launch = var.map_public_ip
  region                  = var.region
  tags = var.public_subnet__tags
}
