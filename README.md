## Terraform AWS 3-Tier Enterprise Architecture
📌 Project Overview

This project demonstrates how to design and provision a secure, scalable, and production-style 3-tier web application infrastructure on AWS using Terraform (Infrastructure as Code).

The infrastructure follows industry best practices by separating concerns into network, web, and database layers, ensuring security, maintainability, and repeatability.

## 🏗️ Architecture Overview

![AWS 3-Tier Architecture](docs/architecture/aws-3tier-architecture.png)

🎯 Objectives
 - Implement Infrastructure as Code (IaC) using Terraform following industry best practices
 - Design and deploy a secure, production-grade AWS 3-Tier Architecture
 - Apply cloud security and networking best practices (private subnets, least privilege access)
 - Enable repeatable, environment-agnostic deployments with clean teardown (terraform destroy)
 - Demonstrate real-world DevOps and cloud engineering skills beyond tutorials

## 📂 Repository Structure

```text
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
│   ├── architecture/
│   │   └── aws-3tier-architecture.png
│   └── troubleshooting/
│       ├── asg-free-tier-error.png
│       ├── terraform-state-drift.png
│       ├── alb-503-error.png
│       └── alb-recovery-success.png
│
└── README.md

```
🔐 Security Best Practices
  - Private subnets for App & Database tiers
  - No public access to EC2 or database instances
  - Security Group chaining for controlled traffic flow
  - No hardcoded secrets in Terraform code
  - Remote Terraform state with locking & encryption

 ## 🚀 Commands during Deployment
  - terraform init      --  Initializes the Terraform working directory.
  - terraform validate  --  Checks whether the Terraform configuration is syntactically valid.
  - terraform plan      --  Shows what Terraform will change before making any real changes.
  - terraform apply     --  Applies the planned changes to the infrastructure.
    
  Terraform follows a predictable workflow: initialize the environment, validate configurations, review planned changes, and then apply them safely to create or update infrastructure















