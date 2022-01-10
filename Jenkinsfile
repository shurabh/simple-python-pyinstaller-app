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
               def customImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile") 
          }
     }
     steps {
          sh 'docker run --rm $customImage python test.py'
     }
}
      
      }
   }

