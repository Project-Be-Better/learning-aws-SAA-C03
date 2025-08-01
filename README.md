# AWS Solutions Architect Associate (SAA-C03) Learning Project

This repository contains learning materials, practice exercises, and study resources for the AWS Certified Solutions Architect – Associate (SAA-C03) certification exam using a containerized development environment.

## Overview

The AWS Solutions Architect Associate certification validates expertise in designing distributed systems on AWS. This project provides a complete development environment with all necessary tools pre-configured for hands-on AWS learning and practice.

## Development Environment

This project uses a **Dev Container** setup with Ubuntu 22.04.5 LTS, providing a consistent development environment across different machines.

### Pre-installed Tools

- **AWS CLI** - Command line interface for AWS services
- **Terraform** - Infrastructure as Code tool
- **AWS CDK** - Cloud Development Kit for TypeScript/Python
- **Python 3** with **boto3** - AWS SDK for Python
- **Node.js 20 LTS** - Required for AWS CDK v2+
- **Git, curl, jq, vim** - Essential development tools

### VS Code Extensions

The dev container automatically installs:

- AWS Toolkit for Visual Studio Code
- HashiCorp Terraform
- Python
- Prettier Code Formatter
- Docker

## Project Structure

```
learning-SAA-C03/
├── .devcontainer/          # Dev container configuration
│   ├── devcontainer.json   # Container settings and extensions
│   ├── Dockerfile         # Container image definition
│   └── bootstrap.sh       # Post-create setup script
├── .aws/                  # AWS configuration files
│   ├── config.example     # AWS CLI config template
│   └── credentials.example # AWS credentials template
├── .env.example          # Environment variables template
├── .gitignore           # Git ignore rules
├── img/                 # Documentation images
└── README.md           # This file
```

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine
- [Visual Studio Code](https://code.visualstudio.com/) with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- AWS Account (Free Tier recommended for learning)

### Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone <your-repo-url>
   cd learning-SAA-C03
   ```

2. **Open in VS Code:**

   ```bash
   code .
   ```

3. **Reopen in Container:**

   - VS Code will prompt to "Reopen in Container"
   - Or use Command Palette (`Ctrl+Shift+P`) → "Dev Containers: Reopen in Container"

4. **Configure AWS Credentials:**

   **Option A: Using AWS CLI in the container**

   ```bash
   aws configure
   ```

   **Option B: Copy from host (if you have AWS CLI configured locally)**

   - The container automatically mounts your local `~/.aws` directory
   - Your existing AWS credentials will be available

   **Option C: Environment variables**

   ```bash
   cp .env.example .env
   # Edit .env with your AWS credentials
   ```

5. **Verify Setup:**
   ```bash
   aws sts get-caller-identity
   terraform version
   cdk --version
   ```

## Key AWS Topics Covered

- **Design Resilient Architectures** (30% of exam)

  - Multi-tier architecture design
  - High availability and fault tolerance
  - Disaster recovery strategies

- **Design High-Performing Architectures** (28% of exam)

  - Scalable and elastic solutions
  - Performance optimization
  - Caching strategies

- **Design Secure Applications and Architectures** (24% of exam)

  - Identity and access management
  - Data protection and encryption
  - Security best practices

- **Design Cost-Optimized Architectures** (18% of exam)
  - Cost-effective resource selection
  - Pricing models and optimization
  - Resource lifecycle management

## Core AWS Services Focus

### Compute

- Amazon EC2, Auto Scaling
- AWS Lambda
- Amazon ECS/EKS

### Storage

- Amazon S3
- Amazon EBS, EFS
- AWS Storage Gateway

### Database

- Amazon RDS
- Amazon DynamoDB
- Amazon ElastiCache

### Networking

- Amazon VPC
- Amazon CloudFront
- Amazon Route 53
- Elastic Load Balancing

### Security

- AWS IAM
- AWS KMS
- AWS CloudTrail
- AWS Config

### Monitoring

- Amazon CloudWatch
- AWS X-Ray

## Development Workflow

1. **Infrastructure as Code:**

   - Use Terraform for infrastructure provisioning
   - Use AWS CDK for application infrastructure

2. **Python Scripts:**

   - boto3 for AWS automation scripts
   - Practice exercises using Python SDK

3. **AWS CLI:**
   - Command-line operations and scripting
   - Service exploration and testing

## Port Forwarding

The dev container forwards ports 3000 and 8080 for local web applications and services.

## Security Notes

- AWS credentials are never committed to the repository
- Use the [.gitignore](.gitignore) file to prevent credential exposure
- Follow AWS security best practices for IAM roles and policies

## Container Features

- **Automatic Tool Installation:** All AWS tools are pre-installed via [bootstrap.sh](.devcontainer/bootstrap.sh)
- **Credential Mounting:** Your local AWS credentials are mounted into the container
- **VS Code Integration:** Full IntelliSense and debugging support for all languages

## Troubleshooting

### AWS Authentication Issues

```bash
# Check current identity
aws sts get-caller-identity

# Reconfigure if needed
aws configure
```

### Container Rebuild

If you need to rebuild the container:

1. Command Palette → "Dev Containers: Rebuild Container"

## Contributing

Feel free to contribute by adding exercises, improving documentation, or sharing study resources through pull requests.

## License

This project is licensed under the MIT License.

## Disclaimer

This repository is for educational purposes only. Always follow AWS best practices and be mindful of costs when working with AWS services. Use AWS Free Tier resources when possible to minimize costs during learning.
