# 🚀 Infrastructure as Code CI/CD Pipeline on AWS using Terraform, Docker, ECS Fargate & GitHub Actions

## 📌 Project Overview

This project automates the deployment of a containerized web application on AWS using Infrastructure as Code (Terraform) and CI/CD (GitHub Actions).

The goal is to eliminate manual production deployments and create a secure, scalable, repeatable deployment pipeline.

---

# 📖 Business Scenario

A growing e-commerce company was deploying applications manually using SSH.

Problems:

- Manual deployments
- Human errors
- Configuration mistakes
- Production outages
- No rollback capability

The CTO requested:

- No manual production deployments
- Fully automated infrastructure
- Automated application deployment
- Rollback capability
- Infrastructure stored as code

This project solves that problem.

---

# 🏗 Architecture

Developer
↓

GitHub Repository
↓

GitHub Actions

↓

Build Docker Image

↓

Push Image to Amazon ECR

↓

Amazon ECS Fargate

↓

Application Load Balancer

↓

CloudWatch Logs

---

# 🛠 Technologies Used

- Terraform
- AWS ECS Fargate
- Docker
- Amazon ECR
- Application Load Balancer
- CloudWatch
- IAM
- Security Groups
- GitHub Actions
- GitHub Secrets
- HTML
- CSS
- JavaScript

---

# 📂 Project Structure

```
infra-as-code-pipeline/

│

├── app/

│ ├── Dockerfile

│ ├── index.html

│ ├── style.css

│ └── script.js

│

├── terraform/

│ ├── backend.tf

│ ├── provider.tf

│ ├── main.tf

│ ├── variables.tf

│ ├── outputs.tf

│ └── modules/

│ ├── networking/

│ ├── security/

│ ├── ecr/

│ ├── monitoring/

│ └── compute/

│

└── .github/

└── workflows/

└── deploy.yml

```

---

# ⚙ Phase 1 – Application

Created a responsive frontend using:

- HTML
- CSS
- JavaScript

The page simulates a deployment dashboard containing:

- Pipeline Status
- Deploy Button
- Deployment Logs

---

# ⚙ Phase 2 – Docker

Containerized the application.

Dockerfile

```dockerfile
FROM nginx:alpine

COPY . /usr/share/nginx/html
```

Build

```bash
docker build -t ecommerce-app .
```

Run

```bash
docker run -p 8081:80 ecommerce-app
```

---

# ⚙ Phase 3 – Push Docker Image to Amazon ECR

Created Amazon ECR Repository.

Login

```bash
aws ecr get-login-password \
| docker login \
--username AWS \
--password-stdin \
<ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com
```

Tag

```bash
docker tag ecommerce-app:latest \
ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/ecommerce-app:latest
```

Push

```bash
docker push ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/ecommerce-app:latest
```

---

# ⚙ Phase 4 – Terraform Backend

Configured Terraform backend using:

- S3 Bucket
- State Locking

Files:

- backend.tf
- provider.tf

---

# ⚙ Phase 5 – Networking Module

Provisioned

✔ VPC

✔ Public Subnet 1

✔ Public Subnet 2

✔ Internet Gateway

✔ Route Tables

✔ Route Associations

---

# ⚙ Phase 6 – Security Module

Created

- ALB Security Group
- ECS Security Group
- IAM Execution Role

Attached

AmazonECSTaskExecutionRolePolicy

---

# ⚙ Phase 7 – Monitoring Module

Created

CloudWatch Log Group

Retention

14 Days

Purpose

Store ECS Container Logs

---

# ⚙ Phase 8 – ECR Module

Created

Amazon Elastic Container Registry

Enabled

- Image Scan on Push

Repository

```
ecommerce-app
```

---

# ⚙ Phase 9 – Compute Module

Provisioned

✔ ECS Cluster

✔ ECS Task Definition

✔ ECS Service

✔ Application Load Balancer

✔ Target Group

✔ Listener

✔ Auto Scaling Policy

Deployment Platform

AWS Fargate

---

# ⚙ Phase 10 – Terraform Workspaces

Created

```
terraform workspace new dev

terraform workspace new staging

terraform workspace new production
```

Purpose

Same Terraform code

Different environments

---

# ⚙ Phase 11 – GitHub Secrets

Configured

AWS_ACCESS_KEY_ID

SECRET_ACCESS_KEY

AWS_REGION

These secrets are securely used inside GitHub Actions.

---

# ⚙ Phase 12 – GitHub Actions CI/CD

Workflow

Developer Push

↓

GitHub Actions

↓

Checkout Code

↓

Configure AWS Credentials

↓

Login to Amazon ECR

↓

Build Docker Image

↓

Push Docker Image

↓

Deploy to ECS

Workflow File

```
.github/workflows/deploy.yml
```

---

# 🌍 Deployment Flow

Developer

↓

Git Push

↓

GitHub Actions

↓

Docker Build

↓

Amazon ECR

↓

Amazon ECS Fargate

↓

Application Load Balancer

↓

Public Website

---

# 🔐 Security

- IAM Roles
- GitHub Secrets
- Security Groups
- ECS Task Execution Role
- No hardcoded AWS credentials

---

# 📈 Monitoring

CloudWatch Logs

Used for

- Container Logs
- ECS Logs
- Deployment Monitoring

---

# 📊 Auto Scaling

Configured ECS Service Auto Scaling based on CPU utilization.

---

# 🚀 Features

✔ Infrastructure as Code

✔ Automated CI/CD

✔ Dockerized Application

✔ ECS Fargate Deployment

✔ Load Balancer

✔ Auto Scaling

✔ CloudWatch Logging

✔ GitHub Actions

✔ Secure Credentials

✔ Repeatable Deployments

---

# 🖥 Application

The web application displays

- Deployment Dashboard
- Pipeline Status
- Deployment Logs
- Simulated Deploy Button

Purpose

To demonstrate a successful DevOps deployment pipeline.

---

# 📚 Commands Used

Terraform

```bash
terraform init

terraform plan

terraform apply

terraform destroy
```

Docker

```bash
docker build

docker run

docker tag

docker push
```

Git

```bash
git add .

git commit -m "message"

git push
```

AWS

```bash
aws configure

aws ecs list-clusters

aws ecr describe-repositories

aws ecs list-services
```

---

# 🎯 Learning Outcomes

Through this project I learned

- Infrastructure as Code using Terraform

- AWS ECS Fargate

- Amazon ECR

- Docker Containerization

- GitHub Actions

- CloudWatch Monitoring

- IAM

- Security Groups

- ECS Deployment

- CI/CD Pipeline Automation

---

# 👨‍💻 Author

Omkar

DevOps Engineer (Learning)
