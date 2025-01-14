variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "ami_filter" {
    description = "Name and owner for AMI"

    type = object ({
      name  = string
      owner = string
    })

    default = {
      name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
      owner = "" # Bitnami  
    }
    
}

variable "Environment" {
  description = "Development Environment"

  type = object ({
    name           = string
    network_prefix = string
  })

  default = {
    name           = "dev"
    network_prefix = "10.0"
    }  
}


variable "asg_min_size" {
  description = "Minimum number of ASG's"
  default = 1
}

variable "asg_max_size" {
  description = "Maximum number of ASG's"
  default = 2
}
