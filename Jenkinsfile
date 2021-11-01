pipeline {
    agent {
        docker {
           // label 'docker'
            image 'node:14' 
         //   args '-p 9005:9005' 
            args '-u root:root'
        }
    }
    stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app --no-cache .' 
                sh 'docker run -d -it -p 9005:9005 --name app my-app'
            }
        }
    
     }
}
