variable "sg_names" {
  default = [
        # databases
        "mongodb","redis","rabbitmq","mysql",
        #backend
        "catalogue", "cart", "user", "shipping", "payment",
        #frontend
        "frontend",
        #bastion
        "bastion"
  ]
}

variable "environment" {
  default = "dev"
}

variable "project_name" {
  default = "roboshop"
}