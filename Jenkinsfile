pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app3 --no-cache .' 
                sh 'docker run -d -it -p 9006:9006 --name app3 my-app3'
            }
        }
    
       }
}
