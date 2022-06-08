#!/bin/bash
docker run -d -p 8080:80 $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/$IMAGE_REPO:$IMAGE_TAG
