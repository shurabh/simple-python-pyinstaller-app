pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
}
	def user = $name
    stages {
        stage('ask') {
            steps {
				sh """
				sh user.sh $user
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
