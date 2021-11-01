pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app6 --no-cache .' 
                sh 'docker run -d -it -p 9002:9002 --name app6 my-app6'
            }
        }
    
       }
}
