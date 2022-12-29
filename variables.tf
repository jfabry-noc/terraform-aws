variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
}

variable "instance_size" {
  description = "VM size in AWS."
  type        = string
}

variable "instance_ami" {
  description = "AMI for the image to deploy."
  type        = string
}

