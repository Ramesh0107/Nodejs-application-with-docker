pipeline {
    agent {
                    label 'docker'
        }
        stages {
                
        stage('Deploy') { 
               steps {
                sh 'docker ps -aq | xargs docker rm -f'
                sh 'docker images -aq | xargs docker rmi -f'
                sh 'docker ps -f name=alpine -q | xargs --no-run-if-empty docker container stop'
                sh 'docker build -t my-app8 --no-cache .'
                sh 'docker run -d -it -p 9008:9008 --name app8 my-app8'
                 }
            }
    
       }
}
