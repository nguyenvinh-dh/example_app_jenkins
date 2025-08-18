pipeline {
    agent any
    tools {
        nodejs 'NodeJS'
    }

    stages{
        stage ('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage ('Test') {
            steps {
                echo 'Testing...'
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage ('Build') {
            {
                sh 'npm run build'
                echo 'Build completed successfully.'
            }
        }
    }
}
