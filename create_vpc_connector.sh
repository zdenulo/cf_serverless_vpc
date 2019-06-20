#!/usr/bin/env bash

# enable Serverless VPC access on project
#gcloud services enable vpcaccess.googleapis.com

NETWORK=default

gcloud beta compute networks vpc-access connectors create cache-connector \
--network $NETWORK \
--region us-central1 \
--range 10.8.0.0/28 \
--min-throughput 200 \
--max-throughput 400

