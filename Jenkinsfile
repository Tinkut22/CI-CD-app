pipeline {
    agent any

    environment {
        AWS_REGION = "us-east-1"
        ECR_REPO = "324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app"
        IMAGE_TAG = "${BUILD_NUMBER}" // unique tag for each build
    }

    stages {
        // Stage 1: Pull code from GitHub
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Tinkut22/CI-CD-app.git'
            }
        }

        // Stage 2: Build Java App using Maven
        stage('Build Java Application') {
            steps {
                // 'dir' ensures we run mvn in the correct folder
                dir('sampleapp') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

        // Stage 3: Build Docker Image
        stage('Build Docker Image') {
            steps {
                sh '''
                # Build Docker image and tag with Jenkins build number
                docker build -t demo-app:${IMAGE_TAG} -f sampleapp/Dockerfile .
                # Tag the image for AWS ECR
                docker tag demo-app:${IMAGE_TAG} ${ECR_REPO}:${IMAGE_TAG}
                '''
            }
        }

        // Stage 4: Login to AWS ECR
        stage('Login to ECR') {
            steps {
                sh '''
                aws ecr get-login-password --region $AWS_REGION \
                | docker login --username AWS --password-stdin $ECR_REPO
                '''
            }
        }

        // Stage 5: Push Docker Image to AWS ECR
        stage('Push Image to ECR') {
            steps {
                sh 'docker push ${ECR_REPO}:${IMAGE_TAG}'
            }
        }

        // Stage 6: Deploy Docker Image on EC2
        stage('Deploy to EC2') {
            steps {
                sh '''
                # Stop and remove existing container if it exists
                docker rm -f demo || true
                # Run the new container
                docker run -d -p 8090:8080 --name demo ${ECR_REPO}:${IMAGE_TAG}
                '''
            }
        }
    }

    // Post actions after pipeline
    post {
        success {
            echo 'Deployment Successful!'
        }
        failure {
            echo 'Deployment Failed! Check console output.'
        }
    }
}
