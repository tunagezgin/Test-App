#!/bin/bash
set -e
# Amazon Linux 2 örneği için; diğer dağıtımlarda uyarlama gerekebilir
yum update -y
amazon-linux-extras install docker -y || yum install -y docker
systemctl enable docker
systemctl start docker
usermod -a -G docker ec2-user
