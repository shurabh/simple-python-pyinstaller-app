pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
  string defaultValue: '', description: 'password', name: 'password', trim: false
}
	    environment {
        User_name     = credentials('&username')
        Pass_Word = credentials('&password')
    }
//	def user = $name
    stages {
        stage('ask') {
            steps {
		    echo "${params.username}"
		    
		    sh'''#!/bin/bash -xe 
		         sh user.sh $User_name $Pass_Word
			 python user.py $username $password
			 echo $WORKSPACE
			 ls -lrt "$PWD"/sources

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
