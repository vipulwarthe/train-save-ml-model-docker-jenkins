pipeline {
    agent any
    stages {
        // Step 1
        stage('SCM') {
                steps {
                    git 'https://github.com/vipulwarthe/train-save-ml-model-docker-jenkins.git'
                }        
        }
        // Step 2
        stage('Build Image') {
                steps {
                    sh 'sudo docker build -t modellinear:v1 .'
                }        
        }
        // Step 3
        stage('Train model') {
                steps {
                    sh 'sudo docker run -dit modellinear:v1' 
                }
        }
}
        post {
        always {
            archiveArtifacts artifacts: '*.pkl'
        }
    }
}
