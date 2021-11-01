pipeline {
    agent {
        docker {
            label 'docker'
            image 'node:14' 
            args '-p 9005:9005' 
            args '-u root:root'
        }
    }
    stages {
        stage('Build and Deploy') { 
            steps {
                sh 'npm install' 
                sh 'npm start &'
            }
        }
    
     }
}
