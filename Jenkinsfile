pipeline {
	agent any 
	environment {
		TOMCAT_CRED = credentials('tomcat')
		TOMCAT_HOST = 10.128.0.50
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
			}
		}
	}
}
