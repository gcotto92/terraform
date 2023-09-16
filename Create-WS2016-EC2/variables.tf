variable "availability_zone" {
    type = string
    default = "us-east-2a"
}

variable "ec2_name"  {
    type = string 
    default = "ec2_name"
}

variable "region" {
    type = string 
    default = "us-east-2"
}

variable "vpc_name" {
    type = string 
    default = "vpc_name-goes-here"
}


#alpha-rstrap-oh-private-c
variable "subnet_id" {
    type = string 
    default = "subnet-id"
}


variable "key_pair_name" {
    type    = string 
    default = "key-pair-here"
}


variable "security_groups" {
    type = list 
    default = ["sg-1","sg-2","sg-3","sg-4","sg-5","sg-6","sg-7","sg-8","sg-9"]
}

variable "instance_type" {
    type    = string 
    default = "t3.xlarge"
}

variable "ec2_tags" {
    type = list 
    default = ["tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text","tag-text"]
}

variable "iam_role_name" {
    type    = string 
    default = "iam-role-here"
}

variable "iam_role_arn" {
    type    = string 
    default = "arn:aws:iam::arnkey"
}