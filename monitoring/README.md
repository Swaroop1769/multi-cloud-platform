# Monitoring and Observability

This part is for basic monitoring using Prometheus, Grafana and CloudWatch (AWS)

---

## Tools Used

- Prometheus – collects metrics (used local setup for now)
- Grafana – used to show CPU and memory usage
- CloudWatch - it’s AWS native, creating a log group and the EC2 logs sends to the CloudWatch via cwagent

---

## Prometheus

- Scrapes local system metrics
- Config is in prometheus.yml
- It can be set to auto-discover EC2 using ec2_sd_configs (didn’t test that here)

---

## Grafana

- Dashboard file: grafana-dashboard.json
- Shows CPU and memory usage live
- Can import it by going to Grafana → Manage → Import

---

## Note

Is a simple setup to show how monitoring can be added.  
For a real setup, we might need Node Exporter running on EC2 or GCP, and proper creds if we want Prometheus to scrape cloud VMs directly.
