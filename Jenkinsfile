pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app4 --no-cache .' 
                sh 'docker run -d -it -p 9000:9000 --name app4 my-app4'
            }
        }
    
       }
}
