pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('Building our image') {
steps{
script {
properties([parameters([credentials(credentialType: 'com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl', defaultValue: 'shurabh', description: '', name: 'username', required: true), password(defaultValueAsSecret: xxxx, description: 'passwd', name: 'passord')])])
}
}
}

stage('Result') {
steps{
sh "echo name: $username"
}
}
}
}
