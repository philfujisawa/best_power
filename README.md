# 🌐 Site Automation with Docker

**Site Automation with Docker** project!
🚀 This guide will help you set up and run a local web application using Docker.
It's designed to be a ***SITE FOR AUTOMATION TEST FOR WEB AND API***. Let’s get started! ✨

---

## ℹ️ About

This project is based on the original work by [brunobatista25](https://github.com/brunobatista25)

---

## ✅ Prerequisites

Before you begin, ensure you have the following installed on your system:
- 🖥️ **Operating System**: Windows (with [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/) enabled)
- 🐋 **Docker Desktop**: Latest version installed and running ([Download Docker Desktop](https://www.docker.com/products/docker-desktop))
- 🛠️ **Git**: Installed on your machine ([Download Git](https://git-scm.com/))

---

## 🚀 Getting Started - Step 1

### 🐳 Install Docker Desktop, open Docker and go to Step 2 (If Docker not open,please follow next steps of this guide)

```bash
# 🟡 Step 1: Enable WSL 2 and Configure Docker Desktop

# Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Virtual Machine Platform
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Download and install WSL update package
# Link: https://aka.ms/wsl2kernel

# List available Linux distributions
wsl --list --online

# Install Ubuntu or any preferred distribution
wsl --install -d Ubuntu

# Set WSL 2 as the default version
wsl --set-default-version 2

# Restart your computer and ensure Docker Desktop starts correctly

# 🟢 Step 2: Clone and Run the Project

# Clone the repository
git clone https://github.com/brunobatista25/best_power.git

# Navigate to the project directory
cd best_power

# Build the Docker image
docker build -t imagem_site .

# Start the Docker services
docker-compose up

# Open the browser and access the local site
# 🌐 http://localhost:3000/

# 🟠 Step 3: Additional Commands

# Stop the application
docker-compose down

# Restart the application
docker-compose up

# Check if Docker containers are running
docker ps

💡 Additional Notes
Beginner Tip: If you encounter any issues with Docker Desktop, revisit the WSL 2 configuration steps.
Browser Access: Ensure you use http://localhost:3000/ to access the site. If the port is different, check your docker-compose.yml file.
Stop Services: Use docker-compose down to free up resources after testing.