pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
}
//	def user = $name
    stages {
        stage('ask') {
            steps {
		    echo "${params.username}"
		    sh'''#!/bin/bash -xe 
		         sh user.sh $username
			 python user.py $username

			 '''
            }
        }
        stage('run') {
            steps {
                sh("printenv | sort")
            }
        }
    }
}
