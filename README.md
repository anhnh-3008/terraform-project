# Setup
- Download terraform
- `cp terraform.tfvars-example terraform.tfvars` and fill the correct informations.

# Structure of project
```
project-root/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
│
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── user_data/
│   │       ├── nodejs_server.sh
│   │       └── python_server.sh
│   │
│   ├── autoscaling/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── load_balancer/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── rds/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── s3/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── cloudwatch/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── budget/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   └── cloudfront/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│
├── scripts/
│   ├── install_nodejs.sh
│   ├── install_python.sh
│   ├── configure_redis.sh
│   └── configure_cloudwatch.sh
│
└── README.md
```
