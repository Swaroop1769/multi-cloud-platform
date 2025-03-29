# Multi-Cloud Infrastructure Platform

## Overview
This project sets up a basic multi-cloud infrastructure using Terraform for AWS and GCP. CI/CD is handled via GitHub Actions, and monitoring is managed using Prometheus and Grafana.

---

## Sections

### 1. Infrastructure-as-Code (IaC)
- **Tools:** Terraform
- **Providers:** AWS + GCP
- **AWS:** EC2 Instance
- **GCP:** Compute Engine Instance
- **Files:** `main.tf`, `variables.tf`, `outputs.tf`

### 2. CI/CD Pipeline
- **Tool:** GitHub Actions with a matrix strategy
- **Stages:**
  1. Terraform Format Check
  2. Security Scan with tfsec
  3. Terraform Init & Validate
- **File:** `.github/workflows/multi-cloud-pipeline.yml`

### 3. Monitoring
- **Prometheus**: Collects system metrics
- **Grafana**: Visualizes CPU and memory usage
- **Files:** `/monitoring/prometheus.yml`, `/monitoring/grafana-dashboard.json`

### 4. Security
- **IAM Policy:** Defined for AWS (`iam-policy.json`)
- **GCP Service Accounts:** Scoped roles planned
- **Secrets Management:** AWS SSM (no hardcoded secrets)
- **Security Notes:** `security-architecture.md`

### 5. Prompt Engineering
- **AI used for:** Terraform modules, tfsec integration, and GitHub Actions YAML
- **Files:** `prompt-engineering.md`

---

## How to Deploy

### AWS Deployment
```sh
cd infrastructure/aws
terraform init
terraform apply -var="instance_name=my-ec2-instance"
```

### GCP Deployment
```sh
cd infrastructure/gcp
terraform init
terraform apply -var="instance_name=my-gce-instance"
```

---

## Future Improvements
- **Enhance security:** Implement IAM role-based access
- **Scalability:** Add load balancers and autoscaling
- **Logging & Observability:** CloudWatch (AWS) & Cloud Logging (GCP)
