variable "aws_region" {
  description = "The AWS region to launch resources in"
  type = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type  = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be launched"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the instance"
  type        = string
 
}

variable "availability_zone" {
  description = "The Availability Zone to launch the instance in"
  type        = string
  
}