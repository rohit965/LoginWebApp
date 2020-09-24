pipeline {
	agent any 
	environment {
		TOMCAT_CRED = credentials('tomcat')
		//TOMCAT_HOST = 10.128.0.50
		TOMCAT_PORT = 8080
		ARTIFACT = WebApp.war
		CONTEXT_PATH = WebApp
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
				curl -v -u ${TOMCAT_CRED_USR}:${TOMCAT_CRED_PSW} -T ${ARTIFACT} 'http://'${TOMCAT_HOST}':'${TOMCAT_PORT}'/manager/text/deploy?path=//'${CONTEXT_PATH}''

			}
		}
	}
}
