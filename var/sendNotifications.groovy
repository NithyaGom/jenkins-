#!/usr/bin/env groovy

/**
 * Send notifications based on build status string
 */
def call(String buildStatus = 'STARTED') {
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
