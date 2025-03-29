# Prompt Engineering Notes

This file explains how I used AI (ChatGPT) to assist me during the challenge. I used AI mainly for suggestions, debugging, and understanding best practices.

---

## How I Used AI

### 1. Breaking Down the Work

At the start, I wasn’t sure how to structure a multi-cloud Terraform setup with AWS and GCP. I asked AI how to separate provider folders, write reusable modules, and define variables and outputs.

It helped me quickly set up main.tf, variables.tf, and outputs.tf for both cloud providers in an organized way.

---

### 2. Fixing CI/CD Pipeline Issues

While setting up the GitHub Actions workflow, I ran into problems like:

- terraform not found error in job
- tfsec failing the entire pipeline even on low-level issues
- terraform fmt job not running at all

I asked GPT why these things were happening and how to fix them. That’s where I learned about adding continue-on-error: true for specific steps to stop them from breaking the whole workflow.

I also validated matrix strategy and working directory configs using AI as a quick checker.

---

### 3. Understanding Security Feedback

When tfsec flagged issues like "storage bucket encryption doesn't use customer-managed key", I asked what it meant and whether it was mandatory to fix. I understood it was a low severity issue, and instead of blindly changing the setup, I made a note to address it in documentation and future improvements.

---

### 4. Monitoring Stack Support

For Prometheus and Grafana, I used AI to:

- Write a basic prometheus.yml config
- Understand how Prometheus scrapes metrics using exporters
- Generate a simple Grafana dashboard JSON for CPU and memory usage

I didn’t know much about Grafana before, but these prompts helped me understand how dashboards work and how to version them using JSON.

---

## Sample Prompts I Used

- “GitHub Actions tfsec scan failing the job — how to make it non-blocking?”
- “How to use continue-on-error in GitHub Actions step correctly?”
- “Terraform format check step not running in GitHub Actions — what’s the reason?”
- “Why does GitHub Actions show ‘terraform command not found’?”
- “Explain tfsec warning: google-storage-bucket-encryption-customer-key”
- “How to write a Prometheus config to monitor EC2 metrics using Node Exporter?”
- “Create a Grafana dashboard JSON file for monitoring CPU and memory”

---