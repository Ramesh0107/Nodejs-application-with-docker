pipeline {
    agent {
        docker {
            label 'docker'
            image 'node:lts-buster-slim' 
            args '-p 9005:9005' 
            args '-u root:root'
        }
    }
    stages {
        stage('Build and Deploy') { 
            steps {
                sh 'npm install' 
               // sh 'npm run build'
                sh 'npm start'
            }
        }
    
     }
}
