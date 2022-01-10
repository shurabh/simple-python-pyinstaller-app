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
          sh 'pip install --upgrade setuptools && pip install -r requirements.tx && python tests.py'
     }
}
      
      }
   }

