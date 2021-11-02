pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app7 --no-cache .' 
                sh 'docker run -d -it -p 9007:9007 --name app7 my-app7'
            }
        }
    
       }
}
