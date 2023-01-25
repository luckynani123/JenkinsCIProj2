pipeline{
	agent any
	
	tools{
	maven "Maven3"
	jdk "JDK11"
	}

	stages{
	stage('Build the code using Dockerfile'){
	steps{
		scripts{
		dockerImage=docker.build("vprofile:$env.BUILD_ID")
		}
	     }
											
		}
		}
}
