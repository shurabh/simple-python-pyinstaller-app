pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
  string defaultValue: '', description: 'password', name: 'password', trim: false
}
//	def user = $name
    stages {
        stage('ask') {
            steps {
		    echo "${params.username}"
		    sh'''#!/bin/bash -xe 
		         sh user.sh $username $password
			 python user.py $username $password
			 echo $WORKSPACE

			 '''
            }
        }
        stage('run') {
            steps {
                sh("printenv | sort")
            }
        }
	    stage('clean-up') {
		    steps {
			    deleteDir()
			    cleanWs()
		    }
	    }
    }
}
