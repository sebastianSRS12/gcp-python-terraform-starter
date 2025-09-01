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

# GCP Python Terraform Starter

A professional, cloud-native starter project for deploying Python apps on Google Cloud Platform using Terraform, Docker, and CI/CD. Designed for learning, job readiness, and real-world DevOps experience.

## 🚀 Project Summary
- **Cloud Provider:** Google Cloud Platform (GCP)
- **Infrastructure as Code:** Terraform
- **App:** Python (Flask)
- **Containerization:** Docker
- **CI/CD:** GitHub Actions
- **Docs:** Step-by-step deployment, troubleshooting, and learning resources

## 🛠️ Key Skills Demonstrated
- GCP resource provisioning (Cloud SQL, Pub/Sub, Storage)
- Infrastructure as Code (IaC) with Terraform
- Docker containerization
- CI/CD automation
- Modular, maintainable code structure
- Local development and cloud deployment best practices

## 📚 How to Use
1. **Local Development:**
   - Run the Python app locally for fast iteration
   - Use SQLite or PostgreSQL for local DB testing
2. **Infrastructure:**
   - Refine and expand Terraform modules as needed
   - Prepare for GCP deployment when billing is enabled
3. **Deployment:**
   - Follow `DEPLOYMENT.md` for step-by-step cloud deployment
   - Use CI/CD for automated builds and tests

## 💡 What I Learned
- How to design scalable, cloud-native infrastructure
- Best practices for modular Terraform code
- Troubleshooting GCP and Terraform errors
- The importance of documentation and automation

## 🔮 How I’d Expand This Project
- Add VPC, IAM roles, monitoring, and alerting
- Integrate with other GCP services (Cloud Run, BigQuery)
- Implement advanced CI/CD pipelines
- Add automated tests and health checks


