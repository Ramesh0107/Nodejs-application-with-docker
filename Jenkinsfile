pipeline {
    agent {
                    label 'docker'
        }
        stages {
        stage('Deploy') { 
            steps {
                sh 'docker build -t my-app8 --no-cache .' 
                sh 'docker run -d -it -p 9008:9008 --name app8 my-app8'
                 }
        }
    
       }
}
