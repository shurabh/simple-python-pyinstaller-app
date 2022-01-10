pipeline {
    agent none
    def customImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile") 
    options {
        skipStagesAfterUnstable()
    }
    stages {
           stage('test') {
     steps {
//          def customImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile") 
          sh 'docker run --rm $customImage python test.py'
     }
}
      
      }
   }

