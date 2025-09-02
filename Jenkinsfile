
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://gitlab.com/mypublic4341336/my-docker-repo'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('hello-world-image')
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    docker.image('hello-world-image').inside {
                        sh 'echo Hello World from Docker!'
                    }
                }
            }
        }
    }
}

