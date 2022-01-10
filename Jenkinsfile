pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    stages {
           stage('test') {
     agent {
          any
          {
               image 'python:latest'
          }
     }
     steps {
          sh 'pip install --upgrade pip && pip install --upgrade setuptools && pip install -r requirements.tx && python tests.py'
     }
}
      
      }
   }

