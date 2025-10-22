variable "project" {
    default = "roboshop"
  
}

variable "environment" {
    type = map
    default = {
        dev = "dev"
        prod = "prod"
    }
  
}
variable "ami_id" {
    type = string
    default     = "ami-09c813fb71547fc4f"
}


variable "instance_type" {
    type = string
  
}
variable "sg_name" {
    type = string
    default = "allow-alls"
    #optional to inform what is this variable about
    description = "Security group name to attach to ec2 instance"
  
}

variable "cidr" {
    type = list  
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}