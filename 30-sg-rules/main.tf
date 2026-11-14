resource "aws_security_group_rule" "backend_alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = local.bastion_sg_id
  security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = local.bastion_sg_id
  cidr_blocks = "[0.0.0.0/0]"
}