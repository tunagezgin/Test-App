#!/bin/bash
set -e
# ECR URI'yi kendi hesabına göre düzenle
ECR_URI="677276116587.dkr.ecr.us-east-1.amazonaws.com/tuna/test-app:latest"

# Pull & run
docker pull $ECR_URI
docker run -d --name test-app --restart unless-stopped -p 80:80 $ECR_URI
