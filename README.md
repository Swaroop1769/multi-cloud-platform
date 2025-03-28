# Multi-Cloud Infrastructure Platform

This project demonstrates a scalable and secure multi-cloud infrastructure using Terraform, GitHub Actions, and integrated monitoring — designed for hybrid AWS + GCP environments.

---

## Sections

### 1. Infrastructure-as-Code (IaC)
- Tools: Terraform
- Providers: AWS + GCP
- Reusable modules for extensibility
- Resources:
  - AWS: S3 bucket
  - GCP: GCS bucket

### 2. CI/CD Pipeline
- GitHub Actions with matrix strategy
- Validates Terraform on every push/PR
- Workflow: .github/workflows/multi-cloud-pipeline.yml

### 3. Monitoring and Observability
- Prometheus for metrics collection
- Grafana for visualization
- AWS CloudWatch (optional native integration)
- Folder: /monitoring

### 4. Security & Compliance
- IAM policies with least privilege
- VPC and firewall rules
- Secrets stored in SSM Parameter Store
- Folder: /security

### 5. Prompt Engineering Strategy
- Prompts crafted for Terraform, pipelines, and observability configs
- Evaluated and refined outputs for accuracy
- Full log in: prompt-engineering.md

---

## Running the Project

> NOTE: Some GCP components are simulated due to account limitations.

To deploy the AWS part:
```bash
cd infrastructure/aws
terraform init
terraform apply -var="s3_bucket_name=your-unique-bucket"