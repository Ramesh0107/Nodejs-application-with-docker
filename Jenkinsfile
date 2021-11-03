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
                sh 'docker rmi | xargs docker images --filter "dangling=true" -q --no-trunc)'   
              //  sh 'docker images -aq | xargs docker rmi -f' 
                sh 'docker build -t my-app8 --no-cache .'
                sh 'docker run -d -it -p 9008:9008 --name app8 my-app8'   
                sh 'cat /home/ubuntu/my_password.txt | docker login --username ramesh0107 --password-stdin'   
                sh 'docker tag my-app8 ramesh0107/data:${BUILD_NUMBER}'  
                sh 'docker push ramesh0107/data:${BUILD_NUMBER}'   
                    }
            }
    
       }
}
