#!/bin/bash
set -e
# Aşağıdaki ECR URI'yi AWS Console > ECR'den alıp buraya yapıştır.
ECR_URI="AWS_ACCOUNT_ID.dkr.ecr.AWS_REGION.amazonaws.com/REPO_NAME:latest"

# Pull & run
docker pull $ECR_URI
docker run -d --name app --restart unless-stopped -p 80:80 $ECR_URI
