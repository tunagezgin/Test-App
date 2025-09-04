#!/bin/bash
set -e
docker ps -q --filter "name=test-app" | grep -q . && docker stop test-app || true
docker ps -a -q --filter "name=test-app" | grep -q . && docker rm test-app || true
