#!/bin/bash
set -e
# ECR URI'yi kendi hesabına göre düzenle
ECR_URI="AWS_ACCOUNT_ID.dkr.ecr.AWS_REGION.amazonaws.com/Test-App:latest"

# Pull & run
docker pull $ECR_URI
docker run -d --name Test-App --restart unless-stopped -p 80:80 $ECR_URI
