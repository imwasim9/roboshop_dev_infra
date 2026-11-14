variable "sg_names" {
  default = [
        # databases
        "mongodb","redis","rabbitmq","mysql",
        #backend
        "catalogue", "cart", "user", "shipping", "payment",
        #frontend
        "frontend", "frontend_alb",
        #bastion
        "bastion",
        #backend
        "backend_alb"
  ]
}

variable "environment" {
  default = "dev"
}

variable "project_name" {
  default = "roboshop"
}