pipeline {
  agent any
  stages{
   stage('QA Script') {
    steps {
        checkout scm
          script {
              stageEnvironment = [
                  "ENVIRONMENT=dev"
              ]
              withEnv(stageEnvironment) {
                  catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                      sh 'make qa-script'
                  }
           
              }
          }
      }
    } 
  }
}
