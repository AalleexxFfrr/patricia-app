pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/AalleexxFfrr/patricia-app', branch: 'main')
      }
    }

    stage('Front-end React test') {
      parallel {
        stage('Front-end React test') {
          steps {
            sh 'cd frontend'
            sh 'npm ci'
            sh 'npm start'
          }
        }

        stage('') {
          steps {
            sh 'cd frontend && npm ci && npm start'
          }
        }

      }
    }

  }
}