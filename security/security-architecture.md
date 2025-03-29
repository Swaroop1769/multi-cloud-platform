# Security Overview (Simple Summary)

While building this setup, I kept security in mind across IAM, secrets, and cloud configs.

### IAM:
- I created a basic IAM policy for S3 with only needed permissions.
- For GCP, I planned scoped service accounts (but didn’t test them due to limits).
- CI/CD and runtime roles would be separated in a real setup.

### Network:
- Since I only used buckets, no VPC or public IP was needed.
- But in full projects, I’d use private subnets and firewall rules.

### Secrets:
- No secrets are hardcoded anywhere.
- In future, I’d use SSM Parameter Store or Vault for storing keys or DB passwords.

### Compliance:
- Terraform + GitHub Actions make everything trackable.
- Logs are version-controlled and easy to audit if needed.

### Final Notes:
- I didn’t set up MFA or access limits, but I’d definitely do that in a real production environment.