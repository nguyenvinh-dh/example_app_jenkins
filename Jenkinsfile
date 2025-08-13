pipeline {
    agent any  // Sử dụng bất kỳ agent nào có sẵn

    tools{
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
                sh 'npm run build'
                echo 'Build completed successfully.'
            }
        }

        // stage('Build') {
        //     steps {
        //         // Xây dựng dự án, nếu cần (ví dụ như minify code, hoặc build production)
        //         script {
        //             echo 'Build stage, could be skipped if not needed'
        //         }
        //     }
        // }

        // stage('Deploy') {
        //     steps {
        //         // Triển khai ứng dụng (có thể là copy lên server hoặc chạy docker)
        //         script {
        //             echo 'Deploying to production or staging environment'
        //         }
        //     }
        // }
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
