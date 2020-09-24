pipeline {
	agent any 
	environment {
		TOMCAT_CRED = credentials('tomcat')
	}
	stages {
		stage('Compile & Package') {
			steps {
				sh "mvn clean package"
				}
		}
		stage('Displaying credentials') {
			steps {
				echo "username : $TOMCAT_CRED_USER password: $TOMCAT_CRED_PSW"
			}
		}
	}
}
