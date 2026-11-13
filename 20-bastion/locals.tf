locals {
    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = true
    }
    common_name_suffix = "${var.project_name}-${var.environment}"
    ami_id = data.aws_ami.joindevops.id
    sg_id = data.aws_ssm_parameter.bastion-sg_id.value
    subnet_id = split("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
}