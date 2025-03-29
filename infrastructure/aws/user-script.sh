#!/bin/bash
sudo yum install -y amazon-cloudwatch-agent
sudo systemctl enable amazon-cloudwatch-agent
sudo systemctl start amazon-cloudwatch-agent
