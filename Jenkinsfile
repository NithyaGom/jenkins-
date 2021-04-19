pipeline {
  agent any
  
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
                def htmlFiles
                dir ('output/qa-report') {
                    htmlFiles = findFiles glob: '*.html'
                }
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: "${WORKSPACE}/output/qa-report",
                    reportFiles: htmlFiles.join(','),
                    reportName: 'EDH-IngestionAPI-QA-TestReport'
                ]
            }
        }
    }
  }
}
