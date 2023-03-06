pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/AalleexxFfrr/patricia-app', branch: 'main')
      }
    }

    stage('Build') {
        steps {
          dir(path: 'frontend') {
            sh 'npm ci'
            sh 'npm run build'
          }
        }
      }

      stage('Start') {
        steps {
          dir(path: 'frontend') {
            sh 'npm start'
          }
      }
    }
  }
}
