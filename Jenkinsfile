pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('Building our image') {
steps{
script {
properties([parameters([credentials(credentialType: 'com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl', defaultValue: '', description: '', name: 'username', required: true), credentials(credentialType: 'com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl', defaultValue: '', description: '', name: 'password', required: false)])])
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
