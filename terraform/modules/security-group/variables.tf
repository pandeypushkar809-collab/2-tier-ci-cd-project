module "sg" {
    source = "terraform-aws-modules/security-group/aws"
    version = "5.1.0"
    
    name = "two-tier-sg"
    description = "Security group for two-tier application"
    vpc_id = var.vpc_id

    ingress_rules = [
        "ssh-tcp-22",
        "http-80-tcp"
    ]
ingress_cidr_blocks = [
    {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"
        description = "Frontend App Port"
        cidr_blocks = ["0.0.0.0/0"]
    }
    {
     from_port = 8080
        to_port = 8080
        protocol = "tcp"
        description = "Backend App Port"
        cidr_blocks = ["0.0.0.0/0"]   
    }
    egress_rules = ["all-all"]
]




}

