pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('username passwd') {
steps{
script {
withCredentials([usernamePassword(usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
  // available as an env variable, but will be masked if you try to print it out any which way
  // note: single quotes prevent Groovy interpolation; expansion is by Bourne Shell, which is what you want
  sh 'echo $PASSWORD'
  // also available as a Groovy variable
  echo USERNAME
  // or inside double quotes for string interpolation
  echo "username is $USERNAME"
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
