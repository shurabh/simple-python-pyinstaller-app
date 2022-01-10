pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            agent {
                any {
                    image 'python:3-alpine'
                }
            }
            steps {
//                sh 'python -m py_compile sources/add2vals.py sources/calc.py'
                sh 'python -m pip install pandas'
                sh 'python -m py_compile sources/hello.py '
                stash(name: 'compiled-results', includes: 'sources/*.py*')
            }
        }
        stage('Deliver') { 
            agent any
            environment { 
                VOLUME = '$(pwd)/sources:/src'
                IMAGE = 'cdrx/pyinstaller-linux:python3'
            }
            steps {
                dir(path: env.BUILD_ID) { 
                    unstash(name: 'compiled-results') 
                    sh "docker run --rm -v ${VOLUME} ${IMAGE} 'pyinstaller -F hello.py'" 
                }
            }
            post {
                success {
                    archiveArtifacts "${env.BUILD_ID}/sources/dist/hello"
//   		    sh "chmod +x ${env.BUILD_ID}/sources/dist/hello"
                    sh(""" ${env.BUILD_ID}/sources/dist/hello""")
//                    sh(""" ${env.BUILD_ID}/sources/dist/add2vals 2 3""")
//		    sh('./add2vals 2 3')
                    sh "docker run --rm -v ${VOLUME} ${IMAGE} 'rm -rf build dist'"
                }
            }
        }
    }
}
