pipeline {
  agent any
  stages {
    stage('Build App') {
      steps {
        sh '''go build main.go

cp main /home/ivanlook/'''
      }
    }
  }
}