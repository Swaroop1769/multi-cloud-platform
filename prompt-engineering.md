# Prompt Engineering Log

This file documents how AI assistance was used during infrastructure design and automation.

---

## Example 1: Terraform Module Generation for AWS S3

### Prompt Used:
> “Generate a Terraform config to provision an S3 bucket in AWS with tags and force_destroy enabled.”

### AI Output:
- Generated main.tf using aws_s3_bucket
- Included tags, force_destroy, and region

### Evaluation:
- Output was mostly correct
- Needed changes:
  - Renamed bucket and tags to avoid real company names
  - Added outputs for bucket_name and arn

---

## Example 2: GitHub Actions Workflow

### Prompt Used:
> “Give me a GitHub Actions workflow that runs Terraform validation and plan on both AWS and GCP folders.”

### AI Output:
- Matrix strategy with aws and gcp
- Steps for init, validate, fmt, plan

### Evaluation:
- Worked perfectly
- Used it directly in .github/workflows/multi-cloud-pipeline.yml

---

## Example 3: Prometheus Configuration

### Prompt Used:
> “Give me a Prometheus config to scrape EC2 instances in AWS using ec2_sd_configs.”

### AI Output:
- Generated prometheus.yml with correct ec2_sd_configs
- Included basic static_configs fallback

### Evaluation:
- Manually updated to mask credentials
- Added localhost:9100 for testing

---

## Summary

Throughout this project, AI was used to:
- Rapidly scaffold Terraform modules
- Design CI/CD pipelines
- Draft monitoring configurations
- Save time while ensuring correctness

All outputs were critically reviewed and adapted before use.