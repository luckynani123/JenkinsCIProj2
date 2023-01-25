pipeline{
	agent
	
	tools{
	maven "Maven3"
	jdk "JDK11"
	}

	stages{
	stage('Build the code using Dockerfile'){
	steps{
		dockerImage=docker.build("vprofile:$env.BUILD_ID")
	     }
											}
		}
		}
