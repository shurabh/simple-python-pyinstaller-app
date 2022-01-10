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
               image 'qnib/pytest'
          }
     }
     steps {
          sh 'virtualenv venv && . venv/bin/activate && pip install -r requirements.tx && python tests.py'
     }
}
      
      }
   }

