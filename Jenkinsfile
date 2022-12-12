pipeline {
    agent any
    
    environment {
    		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    		}

    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling... ';
                    git branch: 'khaled',
                        url : 'https://github.com/kridhamza/VoyageProject',
                        credentialsId: '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';
            }
        }

    
        
     
      }
      
      post {
      	always {
      		sh 'docker logout'
      	}
      }
}
