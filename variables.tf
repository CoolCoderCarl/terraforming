variable "vpc_name" {
  description = "Value of the Name tag for the VPC name"
  type        = string
  default     = "TestProjectVPC"
}

variable "public_subnet_cidrs" {
  #type        = list(string)
  type        = string
  description = "Public Subnet CIDR values"
  default     = "10.0.1.0/24"
  #default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = string
  description = "Private Subnet CIDR values"
  default     = "10.0.4.0/24"
  #default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}


variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "FastServerCreation"
}

variable "ami_id" {
  description = "Value of the AMI ID for the EC2 instance"
  type        = string
  default     = "ami-053b0d53c279acc90"
}


variable "database_name" {

  description = "Value of the Database Name of the DynamoDB"
  type        = string
  default     = "herold_database"
}


variable "hash_key" {

  description = "Value of the Hash of the DynamoDB"
  type        = string
  default     = "user_name"
}

variable "range_key" {

  description = "Values of the Range Key of the DynamoDB"
  type        = string
  default     = "day_month"
}
