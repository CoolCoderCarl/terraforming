variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "FastServerCreation"
}

variable "ami_id" {
  description = "Value of the AMI ID for the EC2 instance"
  type        = string
  default     = "ami-023d1ab98b72c7720"
}
