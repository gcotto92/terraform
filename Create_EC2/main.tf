provider "aws" {
    access_key = "accesskeygoeshere"
    secret_key = "secretkeygoeshere"
    region = "us-east-2"
}

resource "aws_instance" "ws-2019" {
    ami = data.aws_ami.windows.id 
    instance_type = var.instance_type
    #name = var.ec2_name
    availability_zone = var.availability_zone
    subnet_id = var.subnet_id
    key_name = var.key_pair_name
    security_groups = ["${var.security_groups[0]}","${var.security_groups[1]}","${var.security_groups[2]}","${var.security_groups[3]}","${var.security_groups[4]}","${var.security_groups[5]}","${var.security_groups[6]}",
        "${var.security_groups[7]}","${var.security_groups[8]}","${var.security_groups[9]}","${var.security_groups[10]}","${var.security_groups[11]}"]
    tags = {
        Name            = "tagname"
        Location        = "tagname1"
        ServerRole      = "tagname2" 
        Region          = "tagname3"
        AZ              = "tagname4"
        Env             = "tagname5"
    }


lifecycle {
    ignore_changes = [ami]
    }


    #root disk
    root_block_device {
        #device_name             = "/dev/sda1"
        volume_size             = "500"
        volume_type             = "gp3"
        encrypted               = false
        delete_on_termination   = true  
    }

    ebs_block_device {
        device_name             = "/dev/xvdb"
        volume_size             = "500"
        volume_type             = "gp3"
        encrypted               = false 
        delete_on_termination   = true  
    }

}

#AMI Filter for WS 2019 Base 
data "aws_ami" "windows" {
    most_recent = true 

    filter {
        name = "name"
        values = ["Windows_Server-2019-English-Full-Base-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["801119661308"] 
}

