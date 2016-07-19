#!/bin/bash

# Apply patches
yum update -y --exclude=kernel

# Install tools
sudo yum install -y git nano unzip screen nc telnet
sudo yum install -y wget
