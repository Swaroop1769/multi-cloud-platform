# Monitoring and Observability

This part is for basic monitoring using Prometheus and Grafana.

---

## Tools Used

- Prometheus – collects metrics (used local setup for now)
- Grafana – used to show CPU and memory usage
- CloudWatch – optional, didn’t use in this but it’s AWS native

---

## Prometheus

- Scrapes local system metrics (good for testing)
- Config is in prometheus.yml
- It can be set to auto-discover EC2 using ec2_sd_configs (didn’t test that here)

---

## Grafana

- Dashboard file: grafana-dashboard.json
- Shows CPU and memory usage live
- You can import it by going to Grafana → Manage → Import

---

## Note

This is just a simple setup to show how monitoring can be added.  
For a real setup, you'd need Node Exporter running on EC2 or GCP, and proper creds if you want Prometheus to scrape cloud VMs directly.