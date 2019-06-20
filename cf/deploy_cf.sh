#!/usr/bin/env bash

VPC_CONNECTOR=projects/adventures-on-gcp/locations/us-central1/connectors/cache-connector

gcloud beta functions deploy random-cache --entry-point main \
--runtime python37 \
--trigger-http \
--region us-central1 \
--vpc-connector $VPC_CONNECTOR \
--set-env-vars REDIS_HOST=10.128.0.2