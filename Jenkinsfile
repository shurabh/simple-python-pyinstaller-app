pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
  password defaultValue: '', description: 'password', name: 'password', trim: false
}

//	def user = $name
    stages {
        stage('ask') {
            steps {
		    sh("printenv | sort")
		    echo "${params.username}"
		    withCredentials([usernamePassword(credentialsId: '14-01-2022', usernameVariable: 'username', passwordVariable: 'password')]) {
		    sh'''#!/bin/bash -xe 
		         sh user.sh $username $password
			 python user.py $username $password
			 echo $WORKSPACE
			 ls -lrt "$PWD"/sources

			 '''
		    }
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
