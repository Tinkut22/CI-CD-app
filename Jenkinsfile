pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-1'          // Change to your region
        ECR_REPO = 'your-ecr-repo-name'   // Change to your ECR repo
        IMAGE_TAG = "latest"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Tinkut22/CI-CD-app.git',
                    credentialsId: 'github-creds'
            }
        }

        stage('Build Java Application') {
            steps {
                dir('sampleapp') {  // Change 'sampleapp' if your code is somewhere else
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $ECR_REPO:$IMAGE_TAG .'
            }
        }

        stage('Login to AWS ECR') {
            steps {
                sh '''
                    aws ecr get-login-password --region $AWS_REGION | \
                    docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.$AWS_REGION.amazonaws.com
                '''
            }
        }

        stage('Tag & Push Docker Image') {
            steps {
                sh '''
                    docker tag $ECR_REPO:$IMAGE_TAG <aws_account_id>.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO:$IMAGE_TAG
                    docker push <aws_account_id>.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO:$IMAGE_TAG
                '''
            }
        }
    }

    post {
        success {
            echo 'Build and push completed successfully!'
        }
        failure {
            echo 'Build failed — check logs.'
        }
    }
}
