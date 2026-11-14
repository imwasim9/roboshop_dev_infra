module "sg"{
    count = length(var.sg_names)
    source = "git::https://github.com/imwasim9/terraform_aws_security-group.git?ref=main"
    sg_name = var.sg_names[count.index]
    sg_description = "Created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
    project_name = var.project_name
    environment = var.environment
}



# resource "aws_security_group_rule" "frontend_fronten_alb" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   source_security_group_id = module.sg[10].sg_id  
#   security_group_id = module.sg[9].sg_id
# }