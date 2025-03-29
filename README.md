# Multi-Cloud Infrastructure Platform

This project sets up a basic multi-cloud setup using Terraform for AWS and GCP. CI/CD is handled using GitHub Actions, and monitoring is done using Prometheus and Grafana.

---

## Sections

### 1. Infrastructure-as-Code (IaC)
- Tools: Terraform
- Providers: AWS + GCP
- AWS → S3 Bucket
- GCP → GCS Bucket
- Files: main.tf, variables.tf, outputs.tf

### 2. CI/CD Pipeline
- GitHub Actions with matrix strategy
- Stages:
  - Format check
  - tfsec scan
  - Terraform init & validate
- File: .github/workflows/multi-cloud-pipeline.yml

### 3. Monitoring
- Prometheus to collect metrics
- Grafana dashboard for CPU and memory
- Folder: /monitoring

### 4. Security
- IAM policy (`iam-policy.json`)
- Architecture notes in security-architecture.md
- Secrets via AWS SSM (no hardcoding)

### 5. Prompt Engineering
- AI used for Terraform modules, tfsec, and workflow YAML
- Prompts improved and verified
- File: prompt-engineering.md

---

## How to Deploy (AWS)

```bash
cd infrastructure/aws
terraform init
terraform apply -var="s3_bucket_name=your-bucket-name"