pipeline {
    agent any
    tools {
        nodejs 'NodeJS'
    }

    environment {
        DOCKER_HUB_REPO = 'nkduyt25013/test_push'
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

        stage('Push Docker Image'){
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'test_push', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        sh '''
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        docker tag test_push:1.0 $DOCKER_HUB_REPO:1.0
                        docker push $DOCKER_HUB_REPO:1.0
                        docker logout
                        '''
                    }
                }
            }
        }
    }
}