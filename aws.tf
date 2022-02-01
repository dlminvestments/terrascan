module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "vpc-0031c3dd8812b3c7a

  ingress_cidr_blocks = ["172.31.0.0/16"]
}
