variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Terraform Cloud Managted VM"
}

variable "instance_size" {
  description = "VM size in AWS."
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "AMI for the image to deploy."
  type        = string
  default     = "ami-0283a57753b18025b"
}

