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
	stage('To see the magic') {
        parallel {
		stage('run') {
            steps {
                sh("printenv | sort")
		sh("sleep 20s")
            }
        }
	            stage('new run') {
            steps {
                sh("echo Hello from parallel job ")
		sh("sleep 20s")
            }
        }
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
