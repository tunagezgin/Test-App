#!/bin/bash
set -e
docker ps -q --filter "name=app" | grep -q . && docker stop app || true
docker ps -a -q --filter "name=app" | grep -q . && docker rm app || true
