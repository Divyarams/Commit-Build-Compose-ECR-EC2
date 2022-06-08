#!/usr/share/nginx/html bash
set -e
docker rm -f $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/$IMAGE_REPO:$IMAGE_TAG || true
