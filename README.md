# GCP Python Cloud Project Scaffold

This project demonstrates a production-style Python app deployed to Google Cloud Platform (GCP) using the free tier. It includes:
- Python Flask sample app
- Infrastructure-as-code (Terraform)
- Docker containerization
- GitHub Actions CI/CD
- Step-by-step deployment guide in `docs/DEPLOYMENT.md`

---

## Project Log (Bitácora)

**Date:** July 8, 2025

**Progress:** 80%

### Achievements so far
- ✅ Project scaffolded with professional directory structure
- ✅ Python Flask sample app created
- ✅ Terraform configuration for GCP (provider, storage bucket, Pub/Sub topic)
- ✅ Variables and outputs modularized
- ✅ Dockerfile and CI/CD workflow added
- ✅ Google Cloud SDK and Terraform installed and configured
- ✅ GCP authentication completed
- ✅ README and documentation updated for clarity and professionalism

### Next steps
- [ ] Deploy and test the sample app on GCP (Cloud Run or App Engine)
- [ ] Add automated tests and monitoring
- [ ] Expand infrastructure (e.g., add database, VPC, IAM roles)
- [ ] Polish documentation and add troubleshooting tips

---

## Quick Start

1. **Set up your GCP project:**
   - Create a GCP project and enable billing (free tier is available).
   - Enable required APIs (Cloud Storage, Pub/Sub, etc.).
2. **Configure your variables:**
   - Edit `infra/terraform.tfvars` and set:
     - `project_id` to your real GCP project ID (not the display name)
     - `bucket_name` to a globally unique name
     - `region` (optional, default is `us-central1`)
3. **Authenticate with GCP:**
   - Install the Google Cloud SDK and run:
     ```
     gcloud auth application-default login
     ```
4. **Initialize and plan Terraform:**
   ```
   cd infra
   terraform init
   terraform plan
   ```
5. **Apply your infrastructure:**
   ```
   terraform apply
   ```

For more details, see `docs/DEPLOYMENT.md`.
