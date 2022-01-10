pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    stages {
           stage('test') {

          node {
               def customImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile") 
          }

     steps {
          sh 'docker run --rm $customImage python test.py'
     }
}
      
      }
   }

