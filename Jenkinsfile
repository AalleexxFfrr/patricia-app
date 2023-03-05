pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/AalleexxFfrr/patricia-app', branch: 'main')
      }
    }

    stage('Front-end test') {
      steps {
        sh '''cd frontend
'''
        sh 'cd frontend\\n npm ci\\n npm start'
      }
    }

  }
}