pipeline {
    agent any  // Sử dụng bất kỳ agent nào có sẵn

    tools {
        nodejs 'NodeJS'
    }

    environment {
        DOCKER_HUB_REPO = "nvvinht25014/test_push"
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage('Build') {
            steps {
                //sh 'apt install npm'
                // Đảm bảo lệnh npm run build chính xác và không có lỗi cú pháp
                //sh 'npm run build'  // Kiểm tra script "build" trong package.json
                sh 'docker build -t my-node-app:1.0 .'
                echo 'Build completed successfully.'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(
                        credentialsId: 'testpush',
                        passwordVariable: 'DOCKER_PASSWORD',
                        usernameVariable: 'DOCKER_USERNAME'
                    )]) {
                        sh '''
                        echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                        docker push ${DOCKER_HUB_REPO}:1.0
                        docker logout
                        '''
                    }
                }
            }
        }
    }
}