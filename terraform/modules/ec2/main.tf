module "ec2"
  source = "terraform-aws-modules"
 ec2-instance/aws"
   version = "5.0"

   name = "frontend-instance"

   ami = "ami-0c55b159cbfafe1f0"
   instance_type = "t2.micro"  
    subnet_id = var.subnet_id
    security_group_ids = [var.security_group_id]
    tags = {
      Terraform = "true"    
        project = "Two-Tier-App"
    } 
