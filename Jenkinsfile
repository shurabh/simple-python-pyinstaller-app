pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('Building our image') {
steps{
script {
import jenkins.model.*
jenkins = Jenkins.instance
properties([parameters([string(defaultValue: '', description: '', name: 'username', trim: false), password(defaultValueAsSecret: PASSWORD, description: '', name: 'password')])])
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
