pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               sh 'ls'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}

