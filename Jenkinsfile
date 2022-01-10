pipeline {
environment {
dockerImage = ''
}
agent any
stages {
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Run container') {
steps{
script {
docker run --rm $dockerImage python test.py
}
}
}
stage('Cleaning up') {
steps{
sh "docker rmi $registry:$BUILD_NUMBER"
}
}
}
}
