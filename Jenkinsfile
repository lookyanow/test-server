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
    stage('Deploy App') {
      steps {
        sh '''sudo docker stop testserver 
sudo docker rm testserver
sudo docker run -d -p 8888:8888 --name testserver testserver:${BUILD_NUMBER}'''
      }
    }
  }
}