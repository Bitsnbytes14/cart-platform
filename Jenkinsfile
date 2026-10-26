pipeline {
  agent any
  stages {
    stage('Checkout Repo') {
      steps {
        checkout scm
        sh 'ls -la'
      }
    }
    stage('Run Linter') {
      steps {
        sh 'docker run --rm -i python:3.12-slim python -m json.tool < inventory.json'
      }
    }
    stage('Docker Package') {
      steps {
        sh 'docker build -t retail-cart:1.0 .'
        sh 'docker images retail-cart'
      }
    }
  }
}
