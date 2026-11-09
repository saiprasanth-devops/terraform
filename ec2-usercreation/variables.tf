variable "instance_type" {
  type        = string
 # description = "The size of the EC2 instance"
  default     = "t3.micro"
  description = "The size of the EC2 instance"

}

variable "ami_details"{

  type= string

  default = "ami-0055977a6e828a4f4"
}


# variable "nameofinstance"{


#   type = string
#   default = "Terraform"
# }

variable "tagName" {

type = map

default = {

Name = "mongodb"
Env = "SIT"
state = "Dev"
Terraform = "true"

}
}

variable "cidr_blocks"{

  type = list
  default = ["0.0.0.0/0"] 
}

variable "frontendports"{
type = number
default = 80

}

