resource "aws_ssm_parameter" "sg_id"{
    count = length(var.sg_names)
    name = "/${var.project_name}/${var.environment}/sg_id"
    value = module.sg[count.index].sg_id
    type = "String"
}