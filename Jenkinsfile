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
            dir(path: 'frontend') {
              sh 'npm ci'
              sh 'npm start'
            }

          }
        }

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
