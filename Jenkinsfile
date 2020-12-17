pipeline {
  agent any
  stages {
    stage ('Start') {
      steps {
        // send build started notifications
        echo "${env.GIT_PREVIOUS_COMMIT}"
      }
    }
  }
}
