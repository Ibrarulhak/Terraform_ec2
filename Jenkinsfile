pipeline {
    agent any

    environment {
        // Set AWS credentials once, accessible in all stages
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key-id')
    }

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat '''
                terraform plan -var "aws_access_key=${AWS_ACCESS_KEY_ID}" -var "aws_secret_key=${AWS_SECRET_ACCESS_KEY}"
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                bat '''
                terraform apply -var "aws_access_key=${AWS_ACCESS_KEY_ID}" -var "aws_secret_key=${AWS_SECRET_ACCESS_KEY}" -auto-approve
                '''
            }
        }

        stage('Terraform Destroy') {
            steps {
                bat '''
                terraform destroy -var "aws_access_key=${AWS_ACCESS_KEY_ID}" -var "aws_secret_key=${AWS_SECRET_ACCESS_KEY}" -auto-approve
                '''
            }
        }
    }
}


