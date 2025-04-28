pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/karthik-12201594/calculator-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t calculator-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                    docker stop calculator-container || true
                    docker rm calculator-container || true
                '''
            }
        }

        stage('Run New Docker Container') {
            steps {
                sh 'docker run -d --name calculator-container -p 8081:80 calculator-app'
            }
        }
    }
}
