pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/AalleexxFfrr/patricia-app', branch: 'main')
      }
    }

    stage('Install dependencies') {
      steps {
        dir(path: 'frontend') {
          sh 'npm install'
        }

      }
    }

  }
}