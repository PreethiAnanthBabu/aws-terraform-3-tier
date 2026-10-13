# AWS Terraform 3-Tier Architecture

A highly available AWS application environment provisioned using Terraform and deployed using an AWS CI/CD pipeline.

This project demonstrates Infrastructure as Code, AWS networking, load balancing, Auto Scaling, managed databases, IAM, DNS, HTTPS and automated application deployment.

## Terraform Architecture

```
User
  |
  | HTTPS
  v
Route 53
  |
  v
Application Load Balancer
  |
  v
Target Group
  |
  +----------------------+
  |                      |
EC2                    EC2
Private Subnet A       Private Subnet B
  |                      |
  +----------+-----------+
             |
             v
          RDS MySQL
          Multi-AZ
```

## CI/CD architecture

```
Developer
   |
git push
   |
   v
GitHub
   |
   v
AWS CodePipeline
   |
   v
AWS CodeBuild
   |
   v
AWS CodeDeploy
   |
   v
EC2 Auto Scaling Group
```

## AWS Services Used

- Amazon VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Application Load Balancer
- Target Groups
- Amazon EC2
- EC2 Auto Scaling
- Launch Templates
- Amazon RDS MySQL
- Multi-AZ RDS
- IAM
- AWS Systems Manager Session Manager
- Amazon Route 53
- AWS Certificate Manager
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy

## Terraform Structure
The project uses a single Terraform root module split into logical files.

```
.
├── versions.tf
├── provider.tf
├── variables.tf
├── vpc.tf
├── security-groups.tf
├── iam.tf
├── alb.tf
├── ec2-asg.tf
├── rds.tf
├── route53.tf
├── outputs.tf
├── buildspec.yml
├── appspec.yml
├── index.html
└── scripts/
```

