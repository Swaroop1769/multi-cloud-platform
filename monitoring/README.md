# Monitoring and Observability

This project includes a multi-tool observability stack designed for hybrid cloud infrastructure.

## Tools Used

- Prometheus: Collects metrics from AWS EC2 and local nodes using Node Exporter.
- Grafana: Visualizes system metrics through a custom dashboard.
- CloudWatch: (Optional) AWS-native monitoring for logs and alarms.

## Prometheus Setup

- Auto-discovers AWS EC2 instances via ec2_sd_configs.
- Scrapes local machine metrics for demo/testing.
- Config file: prometheus.yml

## Grafana Dashboard

- Shows real-time CPU and memory usage.
- Dashboard file: grafana-dashboard.json
- Import into Grafana under "Manage → Import".

## Note

This setup is designed to demonstrate observability architecture. Actual integration may require cloud credentials and agent deployment.