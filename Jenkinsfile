pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                sh 'sudo docker rmi $(sudo docker images -f dangling=true -q )'
                sh 'sudo docker ps -f name=alpine -q | xargs --no-run-if-empty docker container stop'
                sh 'sudo docker build -t my-app8 --no-cache .' 
                sh 'sudo docker run -d -it -p 9008:9008 --name app8 my-app8'
                 }
        }
    
       }
}
