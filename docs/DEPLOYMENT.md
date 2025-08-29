# GCP Deployment Guide

## Prerequisites
- Google Cloud account (free tier)
- gcloud CLI installed
- Terraform installed

## Steps
1. Authenticate: `gcloud auth login`
2. Set project: `gcloud config set project <YOUR_PROJECT_ID>`
3. Initialize Terraform: `cd infra && terraform init`
4. Apply Terraform: `terraform apply`
5. Build Docker image: `docker build -t gcp-sample-app .`
6. Deploy to Cloud Run or GKE (instructions below)
