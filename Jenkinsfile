pipeline {
    agent any
     environment {
    		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    		}

    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling... ';
                    git branch: 'master',
                        url : 'https://github.com/kridhamza/VoyageProject',
                        credentialsId: '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';
            }
        }
        stage('Cleaning the project') {     
            steps {
                echo 'cleaning project ...'
                sh 'mvn clean'
            }
        }
        
        stage('Compiling the artifact') {             
            steps {
                echo "compiling"
                sh 'mvn compile'
            }
        }
    
        
     
      }
      
      post {
      	always {
      		sh 'docker logout'
      	}
      }
}
