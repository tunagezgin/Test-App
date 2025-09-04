#!/bin/bash
set -e
# ECR URI'yi kendi hesabına göre düzenle
ECR_URI="AWS_ACCOUNT_ID.dkr.ecr.AWS_REGION.amazonaws.com/test-app:latest"

# Pull & run
docker pull $ECR_URI
docker run -d --name test-app --restart unless-stopped -p 80:80 $ECR_URI
