# AWS Infrastructure Provisioning with Terraform & Ansible

A hands-on Cloud/DevOps project demonstrating how to provision AWS infrastructure with **Terraform** and configure an EC2 server using **Ansible**.

## 📌 Project Overview

The project provisions two Ubuntu EC2 instances inside a custom AWS VPC:

* **Ansible Controller** — runs Ansible and manages the remote server.
* **Managed Node** — configured by Ansible to run Docker and an Nginx container.

Terraform handles the infrastructure, while Ansible handles server configuration.

## 🏗️ Architecture

```text
                    Internet
                       │
                       │ HTTP :80
                       ▼
              ┌──────────────────┐
              │  Managed EC2     │
              │                  │
              │  Docker          │
              │  Nginx Container │
              └────────▲─────────┘
                       │
                 Private SSH
                       │
              ┌────────┴─────────┐
              │ Controller EC2   │
              │                  │
              │ Ansible          │
              └────────▲─────────┘
                       │
                    SSH :22
                       │
              ┌────────┴─────────┐
              │  Local Machine   │
              └──────────────────┘
```

## 🛠️ Technologies Used

* AWS EC2
* AWS VPC
* AWS Security Groups
* AWS Internet Gateway
* Terraform
* Ansible
* Docker
* Nginx
* SSH
* Ubuntu Linux

## 📁 Project Structure

```text
aws-terraform-ansible/
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
│
├── ansible/
│   ├── inventory.ini.example
│   └── setup.yml
│
├── screenshots/
│
├── .gitignore
├── README.md
└── LICENSE
```

## ⚙️ What Terraform Creates

Terraform provisions:

* Custom VPC
* Public subnet
* Internet Gateway
* Route table
* Controller security group
* Managed-node security group
* Ansible controller EC2 instance
* Managed EC2 instance

The infrastructure uses Terraform variables for reusable configuration.

## 🤖 What Ansible Does

Ansible connects to the managed EC2 through its private IP and:

1. Updates the package cache.
2. Upgrades installed packages.
3. Installs Docker.
4. Starts and enables Docker.
5. Pulls the Nginx Docker image.
6. Runs an Nginx container.
7. Verifies the running Docker containers.

## 🔐 Security Considerations

* SSH access to the controller is restricted to the administrator's IP.
* SSH access to the managed node is restricted to the controller security group.
* The managed node exposes HTTP port 80 for the Nginx demonstration.
* Private SSH keys and Terraform variable files are excluded from Git.
* Sensitive values are represented using `.example` configuration files.

## 🚀 Deployment Flow

```text
Terraform
    ↓
AWS Infrastructure
    ↓
EC2 Instances
    ↓
Ansible Controller
    ↓
Ansible
    ↓
Managed EC2
    ↓
Docker
    ↓
Nginx
```

## 🧪 Verification

The deployment was verified by:

* Successfully provisioning the AWS infrastructure with Terraform.
* Connecting to the Ansible controller through SSH.
* Connecting from the controller to the managed node through its private IP.
* Successfully running an Ansible ping test.
* Installing and starting Docker.
* Running the Nginx container.
* Accessing the Nginx default page through the managed server's public IP.

## 📚 Learning Outcomes

This project provided hands-on experience with:

* Infrastructure as Code
* AWS networking
* EC2 provisioning
* CIDR and subnetting
* Security groups
* SSH authentication
* Terraform variables and outputs
* Ansible inventories and playbooks
* Linux server administration
* Docker containers
* Basic cloud security practices

## 👤 Author

**Ajetunmobi Mustapha**

Cloud & DevOps Enthusiast

[LinkedIn](https://www.linkedin.com/in/ajetunmobi-mustapha-85700b309)

---

> This project was built as a hands-on learning exercise to strengthen practical Cloud and DevOps skills.
