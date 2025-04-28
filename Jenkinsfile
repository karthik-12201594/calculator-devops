pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/karthik-12201594/calculator-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t calculator-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                bat '''
                    docker stop calculator-container || exit 0
                    docker rm calculator-container || exit 0
                '''
            }
        }

        stage('Run New Docker Container') {
            steps {
                bat 'docker run -d --name calculator-container -p 8081:80 calculator-app'
            }
        }
    }
}
