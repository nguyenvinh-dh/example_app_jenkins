pipeline {
    agent any  // Sử dụng bất kỳ agent nào có sẵn

    tools {
        nodejs 'NodeJS'
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
                sh 'apt install npm'
                // Đảm bảo lệnh npm run build chính xác và không có lỗi cú pháp
                sh 'npm run build'  // Kiểm tra script "build" trong package.json
                echo 'Build completed successfully.'
            }
        }
    }

    post {
        always {
            // Cleanup actions (nếu cần)
            echo 'Cleaning up...'
        }

        success {
            // Action khi pipeline thành công
            echo 'Build and Deploy completed successfully!'
        }

        failure {
            // Action khi pipeline thất bại
            echo 'Pipeline failed!'
        }
    }
}
