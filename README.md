
<img width="512" height="512" alt="HashiCorp Terraform" src="https://github.com/user-attachments/assets/3db47467-c588-4835-81e4-6e595177b4c9" />

🏗️ Terraform AWS 3-Tier Enterprise Architecture

📌 Overview
This project demonstrates the end-to-end design and implementation of a production-grade, highly available AWS 3-tier architecture using Terraform (Infrastructure as Code).
The goal of this project is not just to provision resources, but to model real enterprise cloud infrastructure with strong emphasis on:
- Architecture design
- Security-by-default
- High availability across Availability Zones
- Modularity and reusability
- Operational best practices
  
This repository reflects how cloud infrastructure is designed, documented, deployed, and managed in real-world enterprise environments.
🧠 Architecture-First Design

Before writing any Terraform code, the architecture was intentionally designed to meet the following enterprise requirements:

🎯 Design Goals
- High Availability across multiple Availability Zones
- Clear separation of concerns (Web, App, Database)
- Private-by-default networking
- Scalable compute using Auto Scaling Groups
- Secure access patterns with least privilege
- Reusable and maintainable Terraform modules

Unified 3 Tier Architecture
terraform-aws-3tier-enterprise/
├── dev/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   └── terraform.tfvars.example
│
├── modules/
│   ├── network/
│   ├── security/
│   ├── alb/
│   ├── asg/
│   └── database/
│
├── docs/
│   └── architecture/
│       └── aws-3tier-architecture.png
│
└── README.md

## 🏗️ Architecture Overview

![AWS 3-Tier Architecture](docs/architecture/aws-3tier-architecture.png)

🧱 Architecture Breakdown
🌐 Networking Layer
- Custom VPC with CIDR segmentation
- Public subnets for internet-facing resources
- Private subnets for application and database tiers
- Internet Gateway for inbound public traffic
- NAT Gateway for secure outbound access from private subnets
- Route tables enforcing traffic boundaries





