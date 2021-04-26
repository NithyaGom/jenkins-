Environment = "edhtest"
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
              expression { return !dryRun && Environment=="edhqa" || Environment=="edhdev" }
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
