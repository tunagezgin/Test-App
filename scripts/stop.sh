#!/bin/bash
set -e
docker ps -q --filter "name=Test-App" | grep -q . && docker stop Test-App || true
docker ps -a -q --filter "name=Test-App" | grep -q . && docker rm Test-App || true
