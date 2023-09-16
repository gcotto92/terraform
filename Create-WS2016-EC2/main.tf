provider "aws" {
    access_key = "access-key"
    secret_key = "secret-key"
    region = var.region
}


resource "aws_instance" "instance-name" {
    ami = "ami-05bfb3bd2660fc173"
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    subnet_id = var.subnet_id
    key_name = var.key_pair_name
    iam_instance_profile = var.iam_role_name
    security_groups = ["${var.security_groups[0]}","${var.security_groups[1]}","${var.security_groups[2]}","${var.security_groups[3]}","${var.security_groups[4]}","${var.security_groups[5]}","${var.security_groups[6]}",
        "${var.security_groups[7]}","${var.security_groups[8]}"]
    tags = {
        Location 	   = "${var.ec2_tags[0]}"
        ServerRole     = "${var.ec2_tags[1]}"
        Subenv         = "${var.ec2_tags[2]}"
        Security       = "${var.ec2_tags[3]}"
        Description    = "${var.ec2_tags[4]}"
        Env            = "${var.ec2_tags[5]}"
        AZ             = "${var.ec2_tags[6]}"
        OS             = "${var.ec2_tags[7]}"
        Type           = "${var.ec2_tags[8]}"
        InstanceState  = "${var.ec2_tags[9]}"
        Name           = "${var.ec2_tags[10]}"
        Region         = "${var.ec2_tags[11]}"
        ServerEnv      = "${var.ec2_tags[12]}"
        Name           = "${var.ec2_tags[13]}"
    }



lifecycle {
    ignore_changes = [ami]
    }


    #root disk
    root_block_device {
        volume_size             = "500"
        volume_type             = "gp3"
        encrypted               = false
        delete_on_termination   = true  
    }

    ebs_block_device {
        device_name             = "/dev/xvdf"
        volume_size             = "500"
        volume_type             = "gp3"
        encrypted               = false 
        delete_on_termination   = false  
    }


}

