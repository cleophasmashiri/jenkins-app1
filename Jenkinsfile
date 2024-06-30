pipeline {
    agent {
        docker {
            image 'timbru31/node-chrome' // Use a Node.js image
            args '-p 3002:80' // Map the app's port to host
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install' // Install project dependencies
            }
        }
        stage('Test') {
            steps {
                sh 'npm test' // Run tests
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("jenkins-app1")
                }
            }
        }
    }
}