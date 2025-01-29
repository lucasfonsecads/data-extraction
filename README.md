
[![.github/workflows/release.yml](https://github.com/lucasfonsecads/data-extraction/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/lucasfonsecads/data-extraction/actions/workflows/release.yml)
# AWS ETL Project
## Overview
This project extracts, transforms, and loads (ETL) data into an AWS-based datalake. It includes linting, tests, containerization, and infrastructure-as-code with Terraform.

## Features
- Extract data from multiple sources (APIs, Databases, CSV files)
- Transform data (cleaning, normalization, type conversion)
- Load data into Parquet format and store it in AWS S3
- AWS Glue integration for ETL orchestration
- Terraform for AWS infrastructure provisioning
- CI/CD pipeline with GitHub Actions
- Dockerized environment for consistency

## Setup
### Prerequisites
- Python 3.9+
- AWS CLI configured with necessary permissions
- Terraform installed for infrastructure deployment
- Docker (optional, for containerized execution)

### Installation
```bash
pip install -r requirements.txt
```

### Deploy AWS Infrastructure
```bash
cd infrastructure
terraform init
terraform apply
```

## Running ETL
```bash
make run
```

## Running Tests
```bash
make test
```

## Linting & Code Formatting
```bash
make lint
```

## Running in Docker
```bash
make docker-build
make docker-run
```