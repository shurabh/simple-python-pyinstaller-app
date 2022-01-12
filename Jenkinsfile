pipeline {
//   agent {
//        label 'any'
//    }
    stages {
        stage('ask') {
            steps {
                script {
                    def askpass = input(
                        message: 'Please enter the password',
                        parameters: [
                            password(defaultValue: '',
                                    description: '',
                                    name: 'password')],
                        submitterParameter: 'submitter')
                    env.MY_USER = askpass.submitter
                    env.MY_PASSWORD = askpass.password
                }
            }
        }
        stage('run') {
            steps {
                sh("printenv | sort")
            }
        }
    }
}
