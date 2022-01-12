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
//jenkins = Jenkins.instance
 withCredentials([string(credentialsId: 'pass', variable: 'password1')]) {
     echo "My password is '${password1}'!"
}

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
