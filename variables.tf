variable "aws_region" {
  description = "The AWS region to deploy in"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}
