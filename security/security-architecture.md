# Security Overview  

## IAM  
- Used **least privilege** IAM roles for EC2 (AWS) and VM (GCP).  
- Avoided hardcoded credentials, preferring **environment variables** or **IAM roles**.  

## Network  
- **No public access** unless explicitly required.  
- Default VPC used, but in production, private subnets and firewall rules would be applied.  

## Secrets  
- **No secrets** are hardcoded.  
- Future improvement: Use **SSM Parameter Store** (AWS) or **Secret Manager** (GCP).  

## Compliance  
- **Terraform + GitHub Actions** ensure traceability and version control.  

## Final Notes  
- **MFA & access restrictions** are missing but should be added in production.  
