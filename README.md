# TimeTrack Database

This repository contains the source code for the database setup and management for the Time Track DB. The database is a postgres database.

## Technologies Used

- **Git and GitHub**: Source control
- **Flyway**: Database migration tool
- **GitHub Actions**: CI/CD pipeline
- **AWS RDS**: Relational Database Service - Postgres
- **Terraform**: Infrastructure as Code (IaC) tool
- **AWS S3 Bucket**: A Bucket used for storing the Terraform State

## Setting up the Secrets Needed to Run a Deployment

### GitHub Secrets
GitHub secrets are used to hide sensitive data like the Arn role and database passwords. This repository requires the following secrets:

- `AWS_ROLE`
- `AWS_REGION`
- `AWS_RDS_ENDPOINT`
- `DB_USERNAME`
- `DB_PASSWORD`
- `DB_PORT`

### Arn Role
To enable Terraform to apply changes, an Arn role is required. This role grants GitHub Actions access to AWS to create the necessary infrastructure. The following roles are required in this repository:

- AmazonRDSFullAccess
- AmazonS3FullAccess
- AmazonVPCFullAccess

After creating the Arn role, copy the Arn number and create a GitHub secret, assigning the value to the `AWS_ROLE` secret.

### Terraform
After setting up the AWS role and setting the secrets you can run the deploy workflow. After a successful deployment, the `AWS_RDS_ENDPOINT` can be set and the flyway script run.

### Flyway
Once the RDS instance is up and running the flyway migration scripts can be run using the migrate workflow. This will create all the tables and run various inserts.
