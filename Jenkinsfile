pipeline {
    agent {
                    label 'docker'
        }
        stages {
                
        stage('Deploy') { 
               steps {
                sh 'docker pull alpine'
                sh 'docker run -d -it alpine sh'   
                sh 'docker ps -aq | xargs docker rm -f'
                sh 'docker images -aq | xargs docker rmi -f' 
                sh 'docker build -t my-app --no-cache .'
                sh 'cat /home/ubuntu/my_password.txt | docker login --username ramesh0107 --password-stdin'   
                sh 'docker tag my-app ramesh0107/data:${GIT_COMMIT}'  
                sh 'docker push ramesh0107/data:${GIT_COMMIT}'   
               
                    }
            }
    
       }
}
