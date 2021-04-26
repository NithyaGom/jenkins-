@Library('re@master')
environment = "edhtest"
dryRun = false
pipeline {
  agent any
  stages{
      stage('test') {
          steps {
              echo "test"
          }
      }
      stage('QA Script') {
          when{
              beforeAgent true
              expression { return !dryRun && environment=="edhqa" || environment=="edhdev" }
            }
            agent none
            steps {
                checkout scm
                script {
                    echo "test"
                }
            }
        }
  }
}
