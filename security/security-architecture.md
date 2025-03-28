# Security Architecture Overview

This document outlines the security considerations and architecture decisions for the hybrid cloud infrastructure setup.

---

## 1. Identity and Access Management (IAM)

### AWS:
- IAM roles for Terraform with least privilege
- Separate roles for CI/CD vs. runtime services
- Example policy: iam-policy.json (see included file)

### GCP:
- Service accounts with scoped permissions
- Role separation between provisioning and monitoring

---

## 2. Network Security

- Resources provisioned inside VPCs with private subnets
- No public IPs assigned unless explicitly required
- Use of security groups and firewall rules to restrict access

---

## 3. Secrets Management

- AWS SSM Parameter Store for storing:
  - Database credentials
  - API keys
- Future extension: HashiCorp Vault or AWS Secrets Manager
- Secrets are never hardcoded in Terraform or pipelines

---

## 4. Compliance Considerations

- Use of Terraform + GitHub Actions supports Infrastructure as Code (IaC) and auditability
- Logs from Terraform runs and CI/CD are retained in GitHub
- Encryption-at-rest and in-transit enabled by default for:
  - S3 buckets
  - GCS buckets

---

## 5. Recommendations for Hardening

- Enable multi-factor authentication (MFA) for all cloud users
- Enforce IAM role session limits and access boundaries
- Monitor credential usage and rotate secrets regularly