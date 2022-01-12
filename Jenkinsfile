pipeline {
   agent any
	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
}

    stages {
        stage('ask') {
            steps {
				sh """
				sh user.sh $name
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
