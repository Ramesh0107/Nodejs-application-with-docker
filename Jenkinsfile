pipeline {
    agent {
        docker {
            label 'docker'
            image 'node:lts-buster-slim' 
            args '-p 3000:3000' 
            args '-u root:root'
        }
    }
    stages {
        stage('Build and Deploy') { 
            steps {
                sh 'npm install' 
                sh 'npm run build'
                sh 'npm test'
                sh 'npm start'
            }
        }
    
     }
}
