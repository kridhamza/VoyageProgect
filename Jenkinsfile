peline {
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
                sh 'mvn clean package'
            }
        }
        
        stage('Compiling the artifact') {             
            steps {
                echo "compiling"
                sh 'mvn compile'
            }
        }
       
        
        
         stage ('Docker build') {
             steps {
            sh ' docker build -t $DOCKERHUB_CREDENTIALS_USR/voyage:latest .'
            }
        }
   
         stage ('Docker login'){
        	steps {
        	sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
        	}
        }
        
   
       
        
        stage ('Docker push'){
        	steps {
        	sh 'docker push $DOCKERHUB_CREDENTIALS_USR/voyage:latest'
        	}
        }
}
        
}
