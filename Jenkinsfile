pipeline {
    agent any
    tools {
        nodejs 'NodeJS'
    }
    stages {
        stage ('checkout') {
            steps {
                checkout scm
            }
        }
        stage ('test') {
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage ('build') {
            steps {
                sh 'npm run build'
            }
        }

        stage ('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
    }
}