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
                dir('frontend') {
                    sh 'npm install'
                    sh 'npm start'
                }
            }
        }
      }
    }

  }
}
