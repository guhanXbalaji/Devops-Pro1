pipeline {
    agent any
    tools {
        maven 'Maven 3.5.0'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/guhanXbalaji/Devops-Pro1']])
                bat 'mvn clean install'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t guhanxdocker/devops-pro1 .'
                }
            }
        }
        stage('Push image to Docker Hub') {
            steps {
                script {
                    withDockerRegistry([credentialsId: 'dock-new', url: 'https://index.docker.io/v1/']) {
                        bat 'docker push guhanxdocker/devops-pro1'
                    }
                }
            }
        }
    }
}
