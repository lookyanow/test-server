pipeline {
  agent any
  stages {
    stage('Build App') {
      steps {
        sh '''go build main.go

cp main /tmp/'''
      }
    }
    stage('Build docker image') {
      steps {
        sh 'sudo docker build -t testserver:${BUILD_NUMBER} . '
      }
    }
  }
}