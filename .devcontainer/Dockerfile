FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools
RUN apt-get update && apt-get install -y \
    curl zip unzip git \
    python3 python3-pip \
    jq vim gnupg software-properties-common \
    awscli \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20 LTS (required for AWS CDK v2+)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Install Terraform from HashiCorp repo
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && apt-get install -y terraform && \
    terraform -install-autocomplete

# Install AWS CDK
RUN npm install -g aws-cdk

CMD [ "bash" ]
