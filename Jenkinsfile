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
