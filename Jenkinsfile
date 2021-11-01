pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app5 --no-cache .' 
                sh 'docker run -d -it -p 9001:9001 --name app5 my-app5'
            }
        }
    
       }
}
