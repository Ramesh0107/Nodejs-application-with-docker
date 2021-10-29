pipeline {
    agent {
        docker {
            label 'docker-build'
            image 'node:lts-buster-slim' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
            stage('Deploy'){
                steps {
                    sh 'deploy.sh'
                }
            }
        }
    }
}
