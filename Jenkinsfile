pipeline {
    agent {
        label 'linux'
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerHubCredentials')
        DOCKERHUB_USER_NAME="shahafd"
        DOCKER_APP_NAME="flask-app"
    }
    stages {
        stage ('Build') {
            steps {
               sh './jenkins_steps/build.sh'
            }
        }
        stage ('Test') {
            steps{
            sh './jenkins_steps/test.sh'
            }
        }
        stage ('Push') {
            steps {
                sh './jenkins_steps/push.sh'
            }
        }
    }
    post {
            always {
                sh 'docker logout'
            }
        }
}
