pipeline {
   agent any

	parameters {
  string defaultValue: '', description: 'username', name: 'username', trim: false
}
//	def user = $name
    stages {
        stage('ask') {
            steps {
		sh 'user.sh ${params.username}'
            }
        }
        stage('run') {
            steps {
                sh("printenv | sort")
            }
        }
    }
}
