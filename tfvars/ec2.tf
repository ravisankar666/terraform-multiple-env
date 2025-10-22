resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_alls.id]
    tags = merge(
      local.common_tags,
      {
        Name = "${local.common_name}-tfvars-multi-env"
      }
    )
}

resource "aws_security_group" "allow_alls" {
  name   = "${local.common_name}-tfvars-multi-env"

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

   tags = merge(
      local.common_tags,
      {
        Name = "${local.common_name}-tfvars-multi-env"
      }
    )

}