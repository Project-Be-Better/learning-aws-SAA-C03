#!/bin/bash
set -e

echo "🔧 Starting bootstrap setup..."

echo "🐍 Installing boto3..."
pip3 install boto3

echo "📦 Verifying AWS CDK installation..."
npm install -g aws-cdk

echo "✅ Installed versions:"
aws --version
terraform -version | head -n 1
cdk --version

echo "🔐 Verifying AWS credentials..."
aws sts get-caller-identity || echo "❌ AWS authentication failed"

echo "✅ Bootstrap complete. Ready to use AWS CLI, boto3, and CDK."
