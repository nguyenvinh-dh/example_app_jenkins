pipeline {
    agent any
    tools {
        nodejs 'NodeJS'
    }

    stages{
        stage ('Checkout'){
            steps {
                checkout scm
            }
        }

        stage ('Test'){
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage ('Build'){
            T {
                sh 'npm run build'
            }
        }
    }
}
