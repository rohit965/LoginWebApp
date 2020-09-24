pipeline {
	agent any 
	environment {
		TOMCAT_CRED = credentials('tomcat')
		//more info about how to use jenkins credentials as variable
		//https://stackoverflow.com/questions/58037858/how-to-get-jenkins-credentials-variable-in-all-stages-of-my-jenkins-declarative
		//TOMCAT_HOST = 10.128.0.50
		TOMCAT_PORT = 8080
		ARTIFACT = './target/LoginWebApp.war'
		CONTEXT_PATH = 'LoginWebApp'
		
	}
	stages {
		stage('Compile & Package') {
			steps {
				sh "mvn clean package"
				}
		}
		stage('Deploy to Standalone Tomcat Server') {
			steps {
				echo "username : $TOMCAT_CRED_USR password: $TOMCAT_CRED_PSW"
				sh 'pwd'
				sh 'curl -T ${ARTIFACT} http://${TOMCAT_CRED_USR}:${TOMCAT_CRED_PSW}@10.128.0.50:${TOMCAT_PORT}/manager/text/deploy?path=/${CONTEXT_PATH}'
				//more info about how to deploy artifact on tomcat through curl command
				//https://stackoverflow.com/questions/4432684/tomcat-manager-remote-deploy-script

			}
		}
	}
}
