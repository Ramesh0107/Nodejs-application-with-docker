pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker ps -f name=my-app8 -q | xargs --no-run-if-empty docker container stop'
                sh 'docker ps -f name=alpine -q | xargs --no-run-if-empty docker container stop'
                sh 'docker container ls -a -fname=my-app8 -q | xargs -r docker container rm'
                sh 'docker container ls -a -fname=alpine -q | xargs -r docker container rm'
                sh 'docker build -t my-app8 --no-cache .' 
                sh 'docker run -d -it -p 9008:9008 --name app8 my-app8'
            }
        }
    
       }
}
