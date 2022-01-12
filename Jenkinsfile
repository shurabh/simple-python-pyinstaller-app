pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('username passwd') {
steps{
script {
//import jenkins.model.*
jenkins = Jenkins.instance
properties([parameters([string(defaultValue: 'user', description: 'user', name: 'username', trim: false),  password: hudson.util.Secret.fromString('PASSWORD')])])
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
