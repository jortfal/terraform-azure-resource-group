FROM debian:buster-20210111-slim

ARG DEBIAN_FRONTEND=noninteractive
ARG GO_VERSION=1.16.4
ARG TERRAFORM_VERSION=0.15.0
ARG TFLINT_VERSION=v0.26.0
ARG TFSEC_VERSION=v0.39.21
ARG TERRAFORM_DOCS_VERSION=v0.12.1

# Update Local Repository Index and Install apt-utils
RUN apt-get update && apt-get -y --no-install-recommends install apt-utils

# Install custom 
RUN \
  apt-get -y --no-install-recommends install \
    sudo \
    bash \
    procps \
    openssl \
    gnupg \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    software-properties-common \
    curl \
    wget \
    unzip \
    python3-pip \
    vim 

# Install Pre-Commit - A framework for managing and maintaining multi-language pre-commit hooks
RUN pip3 install pre-commit

# Install Golang
RUN  \
  wget https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz && \
  rm -rf /usr/local/go && tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
RUN \
  sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
  sudo apt-get update && \
  apt-get -y --no-install-recommends install terraform=$TERRAFORM_VERSION

# Install TFLint - A Pluggable Terraform Linter
RUN curl https://raw.githubusercontent.com/terraform-linters/tflint/$TFLINT_VERSION/install_linux.sh | bash

# Install TFSec - Static analysis of your terraform templates to spot potential security issues. 
RUN \
  curl -L https://github.com/tfsec/tfsec/releases/download/$TFSEC_VERSION/tfsec-linux-amd64 -o tfsec && \
  sudo chmod +x tfsec && \
  sudo mv tfsec /usr/local/bin/tfsec

# Install Terraform Docs - A utility to generate documentation from Terraform Modules
RUN \
  curl -L https://github.com/terraform-docs/terraform-docs/releases/download/$TERRAFORM_DOCS_VERSION/terraform-docs-$TERRAFORM_DOCS_VERSION-$(uname)-amd64.tar.gz -o terraform-docs.tar.gz && \
  tar -xzf terraform-docs.tar.gz && \
  sudo chmod +x terraform-docs && \
  sudo mv terraform-docs /usr/local/bin/terraform-docs

# Install the Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
