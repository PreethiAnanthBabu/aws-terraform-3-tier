# AWS Terraform 3-Tier Architecture

A highly available AWS application environment provisioned using Terraform and deployed using an AWS CI/CD pipeline.

This project demonstrates Infrastructure as Code, AWS networking, load balancing, Auto Scaling, managed databases, IAM, DNS, HTTPS and automated application deployment.

## Terraform Architecture

```text
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

## CI/CD architecture

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
