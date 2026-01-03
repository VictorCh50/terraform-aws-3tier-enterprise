module "network" {
  source = "../modules/network"

  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
  app_subnets    = var.app_subnets
  db_subnets     = var.db_subnets
}

module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
}

module "alb" {
  source = "../modules/alb"

  vpc_id  = module.network.vpc_id
  subnets = module.network.public_subnet_ids
  sg      = module.security.alb_sg

}

module "web_asg" {
  source        = "../modules/asg"
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnets       = module.network.public_subnet_ids
  sg            = module.security.web_sg

  min     = 1
  max     = 3
  desired = 2

  user_data = <<EOF
#!/bin/bash
yum install -y httpd
systemctl start httpd
EOF
}

module "app_asg" {
  source        = "../modules/asg"
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnets       = module.network.app_subnet_ids
  sg            = module.security.app_sg

  min     = 1
  max     = 3
  desired = 2

  user_data = <<EOF
#!/bin/bash
echo "APP TIER"
EOF
}

module "database" {
  source         = "../modules/database"
  db_subnets     = module.network.db_subnet_ids
  db_sg          = module.security.db_sg
  db_name        = var.db_name
  db_username    = var.db_username
  db_password    = var.db_password
  instance_class = var.db_instance_class
}
