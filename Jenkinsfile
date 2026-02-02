pipeline {
    agent any

    environment {
        AWS_REGION = "ap-south-1"
        ECR_URL = "930710566461.dkr.ecr.ap-south-1.amazonaws.com/ci-cd-app"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Tinkut22/CI-CD-app.git'
            }
        }

        stage('Build Java Application') {
            steps {
                sh '''
                mvn clean package
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t ci-cd-app:${BUILD_NUMBER} .
                '''
            }
        }

        stage('Login to AWS ECR') {
            steps {
                sh '''
                aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URL
                '''
            }
        }

        stage('Tag & Push Image') {
            steps {
                sh '''
                docker tag ci-cd-app:${BUILD_NUMBER} $ECR_URL:${BUILD_NUMBER}
                docker push $ECR_URL:${BUILD_NUMBER}
                '''
            }
        }
    }

    post {
        success {
            echo "SUCCESS! Docker image pushed to ECR: $ECR_URL:${BUILD_NUMBER}"
        }
        failure {
            echo "BUILD FAILED — Check console output."
        }
    }
}
