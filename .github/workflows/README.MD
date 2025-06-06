# 🚀 Azure Static Website Deployment via GitHub Actions

This repository demonstrates a CI/CD workflow using **GitHub Actions** to automatically deploy a static website to **Azure Blob Storage** whenever code is pushed to the `main` branch.

## 📦 Workflow Overview

The GitHub Actions workflow (`.github/workflows/deploy.yml`) performs the following:

1. **Triggers** on any push to the `main` branch.
2. **Authenticates** to Azure using a service principal stored in the repository's `AZURE_CREDENTIALS` secret.
3. **Uploads** the contents of the local `website/` folder to the `$web` container of the Azure Storage Account named `awiscoldfashionstatweb` — enabling static website hosting.
4. **Logs out** of Azure at the end of the job.

## 🔐 Azure Credentials

Authentication is handled via a GitHub Secret named `AZURE_CREDENTIALS`, which contains the output from:

```bash
az ad sp create-for-rbac --name "<name>" --role contributor \
--scopes /subscriptions/<subscription-id>/resourceGroups/<resource-group> \
--sdk-auth
