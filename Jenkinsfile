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
        sh 'docker build -t testserver:${BUILD_NUMBER} . '
      }
    }
  }
}