# 🥃 Wisconsin Old Fashioned Static Website

This folder contains the static website files for the **Wisconsin Old Fashioned** project, showcasing a classic cocktail with a Wisconsin twist.

## 📁 Folder Structure

website/
├── index.html # Main landing page for the static site
├── stylesheet.css # Custom styles for layout and design
└── javascript.js # Basic interactivity and behavior (if applicable)


## 🌐 Hosted Live

This static content is automatically deployed to Azure Blob Storage and is publicly accessible at:

🔗 [https://awiscoldfashionstatweb.z19.web.core.windows.net/](https://awiscoldfashionstatweb.z19.web.core.windows.net/)

## 🚀 Deployment Pipeline

Changes made to files in this folder are deployed automatically via a GitHub Actions workflow whenever updates are pushed to the `main` branch. The CI/CD process uploads the contents of this folder directly to the `$web` container of an Azure Storage Account configured for static website hosting.

## 📌 Notes

- All files must reside in the root of the `$web` container for the site to render correctly.
- The `index.html` file is used as the default document.

## 🛠 Technologies Used:

HTML5

CSS3

JavaScript (optional/enhanced features)

Azure Blob Storage (Static Website Hosting)

GitHub Actions (CI/CD Pipeline)
