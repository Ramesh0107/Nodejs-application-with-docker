pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app1 --no-cache .' 
                sh 'docker run -d -it -p 9005:9005 --name app1 my-app1'
            }
        }
    
       }
}
