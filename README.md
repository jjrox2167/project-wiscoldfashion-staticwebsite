🌐 Azure Static Website Deployment with Terraform + GitHub Actions

This project demonstrates a complete Infrastructure-as-Code (IaC) and CI/CD pipeline to deploy a static website to Azure using **Terraform**, **GitHub Actions**, and **Azure Blob Storage**.

It is designed to showcase familiarity with:
- GitHub for source control
- Terraform for cloud infrastructure provisioning
- Azure services (Blob Storage, Resource Groups, IAM)
- GitHub Actions for automated deployments
- Web development using basic HTML, CSS, and JavaScript

## 📌 Purpose

The primary goal of this project is to show potential employers that I understand modern DevOps workflows and cloud-native web hosting — even for simple static sites.

This includes:
- Writing Terraform to provision Azure resources
- Setting up service principals and secure GitHub secrets
- Automating deployments using GitHub Actions
- Understanding Azure Static Website Hosting behavior

## 🛠️ Technologies Used

| Layer | Technology |
|-------|------------|
| Infrastructure | Terraform |
| Cloud Provider | Azure (Blob Storage, Resource Groups, IAM) |
| CI/CD | GitHub Actions |
| Frontend | HTML, CSS, JavaScript |
| Auth | Azure AD Service Principal via GitHub Secrets |

## 🚀 Live Deployment

The website is automatically deployed on push to the `main` branch and is live at:

🔗 [https://awiscoldfashionstatweb.z19.web.core.windows.net/](https://awiscoldfashionstatweb.z19.web.core.windows.net/)

## 🎨 Design Note

This project intentionally keeps the front-end **minimal**. The HTML, CSS, and JavaScript in the `website/` folder serve as placeholder content to:
- Validate the end-to-end deployment flow
- Emphasize cloud infrastructure and automation skills over UI/UX
- Provide a working example of static site hosting on Azure

Future iterations could include richer UI/UX or integration with frameworks like React or Vue — but the current version prioritizes simplicity to focus on DevOps and cloud architecture fundamentals.

## 📂 Project Structure

/project-root
├── main.tf 
├── terraform.tfstate* (Excluded) 
├── .github/workflows/ 
│ └── deploy.yml
├── website/ 
│ ├── index.html
│ ├── stylesheet.css
│ └── javascript.js
└── README.md

## NOTE *State files are excluded or cleared for security*

## ✅ Summary

This project is not about building a feature-rich website — it's about proving competence with the tools and workflows needed to build, deploy, and manage infrastructure and CI/CD pipelines in a modern cloud environment.
