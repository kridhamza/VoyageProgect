pipeline {
	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
    agent any
    
    stages {
        stage('Cloning from GitHub') {
                steps {
                    echo "Getting Project from Git";
                    
                    git branch: 'voyagehamza', credentialsId: '14d06552-df58-407d-bd31-71164c94aae9', url: 'https://github.com/kridhamza/VoyageProject.git'
                }
                
            }
        stage('Clean'){
            steps {
                   sh 'mvn clean'
                }
        }
        stage('Compile'){
            steps {
                sh 'mvn compile -DskipTests'  
            }
        }
        
       
        
        stage('Dockerhub Login') {

			steps {
				sh 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
			}
		}
	    
	    stage ('Docker build') {
             steps {
            sh 'docker build -t khaledkhm/voyage:latest .'
            }
        }
        }
        
        
       
        
    }
}
