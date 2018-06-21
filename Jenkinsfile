def sendNotifications(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESSFUL
  def subject = "summary"
  def details = "summary of jenkins" 
 if (buildStatus == 'STARTED') {
  echo "started"
  }
  else if (buildStatus == 'SUCCESSFUL') {
  echo "successful"
}
emailext (
      to: 'nithyasathish2331@gmail.com',
      subject: subject,
      body: details
  )
}

pipeline {
  agent any
  stages {
    stage ('Start') {
      steps {
        // send build started notifications
        sendNotifications 'STARTED'
      }
    }
    stage ('Install') {
      steps {
        // install required bundles
        sh 'bundle install'
      }
    }
    stage ('Build') {
      steps {
        // build
        sh 'bundle exec rake build'
      }

      post {
        success {
          // Archive the built artifacts
          sh '"success"'
        }
      }
    }
    stage ('Test') {
      steps {
        // run tests with coverage
        sh 'echo "test"'
      }

      
    }
  }
  post {
    always {
      sendNotifications currentBuild.result
    }
}
}
