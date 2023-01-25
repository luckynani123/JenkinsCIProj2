pipeline{
	agent any
	
	tools{
	maven "Maven3"
	jdk "JDK11"
	}
	
	stages{
		stage("Build Image from the Dockerfile"){
			steps{
				script{
					dockerImage=docker.build("vprofileImage:${env.BUILD_ID}")
				}
			}
		}
	}
	
}
