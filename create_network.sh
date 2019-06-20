#!/usr/bin/env bash

GCP_PROJECT=adventures-on-gcp
NETWORK=default

# if you want to use different VPC network than default
#gcloud compute networks create $NETWORK

gcloud compute firewall-rules create allow-redis --network $NETWORK --allow tcp:6379
