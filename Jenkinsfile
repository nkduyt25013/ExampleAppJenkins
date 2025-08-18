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

        stage ('deploy') {
            steps {
                echo 'deploying'
            }
        }
    }
}