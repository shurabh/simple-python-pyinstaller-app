pipeline {
   agent any
   parameters([ string(name: 'Host_user', defaultValue: '', description: 'username')])
    stages {
        stage('ask') {
            steps {
				sh """
				sh user.sh Host_user
				"""
            }
        }
        stage('run') {
            steps {
                sh("printenv | sort")
            }
        }
    }
}
