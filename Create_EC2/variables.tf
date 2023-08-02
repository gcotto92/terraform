variable "availability_zone" {
    type = string
    default = "us-east-2a"
}


variable "subnet_id" {
    type = string 
    default = "subnet-goeshere"
}


variable "key_pair_name" {
    type    = string 
    default = "keypairnamegoeshere"
}


variable "security_groups" {
    type = list 
    default = ["sg-1","sg-2","sg-3","sg-4","sg-5","sg-6","sg-7","sg-8","sg-9",
        "sg-10","sg-11","sg-12"]
}

variable "instance_type" {
    type    = string 
    default = "t3.xlarge"
}