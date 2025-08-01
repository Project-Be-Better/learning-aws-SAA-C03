#!/bin/bash
set -e

# Load environment variables from .env if it exists
if [ -f /workspace/.env ]; then
  echo "Loading environment variables from .env"
  export $(grep -v '^#' /workspace/.env | xargs)
else
  echo "⚠️ Warning: .env file not found in /workspace. AWS CLI may not be authenticated."
fi

# Install Python AWS SDK
pip3 install boto3

# Install AWS CDK
npm install -g aws-cdk

# Confirm installs
echo "✅ Installed versions:"
aws --version || echo "❌ AWS CLI not found or not authenticated"
tf_version=$(terraform -version | head -n 1)
echo "Terraform version: $tf_version"
cdk --version || echo "❌ AWS CDK not installed"

# Optional: test authentication
echo "🔐 Verifying AWS credentials..."
aws sts get-caller-identity || echo "❌ AWS authentication failed"
