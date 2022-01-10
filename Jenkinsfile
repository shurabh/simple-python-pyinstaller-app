pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    stages {
           stage('test') {
     agent {
          docker {
               image 'qnib/pytest'
          }
     }
     steps {
          sh 'virtualenv venv && . venv/bin/activate && pip install -r requirements.tx && python tests.py'
     }
}
      
      }
   }

