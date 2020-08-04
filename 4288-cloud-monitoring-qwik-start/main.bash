#!/usr/bin/env bash

# Cloud Monitoring: Qwik Start | Qwiklabs - https://google.qwiklabs.com/games/1113/labs/4288

# Create a n1-standard-2 instance at us-central1-a with HTTP access
# name: lamp-1-vm

# install apache & php
sudo apt-get update
sudo apt-get install apache2 php7.0 -y 
sudo service apache2 restart

# install stackdriver-agent
curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh
sudo bash add-monitoring-agent-repo.sh
sudo apt-get update
sudo apt-get install stackdriver-agent -y

# install logging-agent
curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh
sudo bash add-logging-agent-repo.sh
sudo apt-get update
sudo apt-get install google-fluentd -y

# cteate uptime check
# name: Lamp Uptime Check
# instance: lamp-1-vm

# create alerting policy with >500 traffic

# create dashboard
# name: Cloud Monitoring LAMP Qwik Start Dashboard

# add the first chart in dashboard
# name: CPU Load

# add the second chart
# name: Received Packets
