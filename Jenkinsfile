pipeline {
    agent any {
                    label 'docker'
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
