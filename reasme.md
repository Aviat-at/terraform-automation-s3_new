#  Automated AWS S3 Bucket Creation using Terraform

##  Project Overview

This project automates the provisioning of **four AWS S3 buckets** using **Terraform**. It uses looping techniques (`count` or `for_each`) to avoid repetitive code, ensuring cleaner and more scalable Infrastructure-as-Code.

---

##  Features

-  Creates 4 uniquely named S3 buckets
-  Written in Terraform using best practices
-  Uses clean, version-controlled project structure
-  Bucket names can be prefixed or fully customized
-  Securely handles configuration using variables

---

##  Tech Stack

- **Terraform** (v1.x)
- **AWS S3**
- **Ubuntu** (development environment)

---
## Additional Work: GitHub Actions CI/CD Integration (Extra)

Although not required, **GitHub Actions** was implemented to automatically deploy the infrastructure on every push to the `main` branch.

### Workflow Steps

- Checks out the code
- Sets up Terraform
- Authenticates with AWS using secrets
- Runs `terraform init`, `plan`, and `apply`

### GitHub Secrets Used

| Name                    | Description                      |
|-------------------------|----------------------------------|
| `AWS_ACCESS_KEY_ID`     | IAM access key for GitHub Action |
| `AWS_SECRET_ACCESS_KEY` | IAM secret key for GitHub Action |
