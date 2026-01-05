# AWS 3-Tier Architecture with Terraform (Enterprise-Grade)

## 📌 Overview
This project implements a **production-style AWS 3-tier architecture** using **Terraform modules**, following infrastructure-as-code and cloud security best practices.

The design separates **networking, security, compute, load balancing, and database layers** to ensure scalability, availability, and maintainability.

---

## 🏗 Architecture
**Tier Breakdown**
- **Presentation Layer**
  - Application Load Balancer (ALB)
  - Public Subnets (Multi-AZ)

- **Application Layer**
  - Auto Scaling Group (Web & App tiers)
  - Private Subnets
  - Launch Templates

- **Data Layer**
  - RDS in private subnets
  - Restricted Security Groups

---

## 📂 Project Structure
terraform-aws-3tier-enterprise/
├── dev/
│ ├── main.tf
│ ├── provider.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── backend.tf
│ └── terraform.tfvars.example
│
├── modules/
│ ├── network/
│ ├── security/
│ ├── alb/
│ ├── asg/
│ └── database/
│
└── README.md

---

## 🔐 Security Best Practices
- Private subnets for App & DB tiers
- Security Group chaining (ALB → Web → App → DB)
- No hardcoded secrets
- Remote Terraform state (S3 backend)

---

## 🚀 How to Deploy
```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

