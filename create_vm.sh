#!/usr/bin/env bash

GCP_PROJECT=adventures-on-gcp
NETWORK=default


gcloud compute instances create-with-container redis-cache \
--project=$GCP_PROJECT \
--machine-type=f1-micro \
--container-image=registry.hub.docker.com/library/redis \
--tags=allow-redis \
--zone=us-central1-a \
--private-network-ip=10.128.0.2 \
--network $NETWORK

gcloud compute instances delete-access-config redis-cache