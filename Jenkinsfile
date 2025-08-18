pipeline {
    agent any
    tools {
        nodejs 'nodejs'
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
    }
}