#!/bin/bash

# script for automating the process of building the Docker image and pushing it to GCP.
gcloud builds submit --tag us-central1-docker.pkg.dev/notely/notely-ar-repo/notely:0.0.1
