# 📌 Prompt Engineering Notes

## 🚀 How I used AI

### 📌 1. Infrastructure Setup
- Helped structure Terraform for AWS & GCP.
- Suggested best practices for `main.tf`, `variables.tf`, and `outputs.tf`.

### 🛠️ 2. Fixing CI/CD Pipeline Issues
- Resolved `terraform not found` error in GitHub Actions.
- Suggested `continue-on-error: true` for non-blocking `tfsec` scans.
- Validated matrix strategy and working directory configs.

### 🔐 3. Security Enhancements
- Refined IAM policies with least-privilege access.
- Addressed `tfsec` security warnings.
- Suggested secure storage of secrets using AWS SSM.

### 📊 4. Monitoring Stack Support
- Generated Prometheus config for EC2 metrics.
- Created Grafana dashboard JSON for CPU & memory.
- Understood how Prometheus scrapes metrics via exporters.

## 💡 Sample Prompts Used
- **"GitHub Actions tfsec scan failing the job — how to make it non-blocking?"**
- **"How to use continue-on-error in GitHub Actions step correctly?"**
- **"Why does GitHub Actions show ‘terraform command not found’?"**
- **"Explain tfsec warning: google-storage-bucket-encryption-customer-key"**
- **"How to write a Prometheus config to monitor EC2 metrics using Node Exporter?"**
- **"Create a Grafana dashboard JSON file for monitoring CPU and memory"**

## ✅ Conclusion
AI streamlined infrastructure automation and security but required critical evaluation before implementation.
