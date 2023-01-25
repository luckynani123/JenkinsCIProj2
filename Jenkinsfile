pipeline{
	agent any
	
	environment {
        registryCredential = 'ecr:us-east-1:AWScred'
        appRegistry = "576512920959.dkr.ecr.us-east-1.amazonaws.com/vprofileapp"
        vprofileRegistry = "https://576512920959.dkr.ecr.us-east-1.amazonaws.com"
    }

	
	tools{
	maven "Maven3"
	jdk "JDK11"
	}
	
	stages{
		
		stage('Build App Image') {
       steps {
       
         script {
                dockerImage = docker.build( appRegistry + ":$BUILD_NUMBER", ".")
                }

            }
    
         }

		stage("Build Image from the Dockerfile"){
			steps{
				script{
					docker.withRegistry( vprofileRegistry, registryCredential ) {
                			dockerImage.push("$BUILD_NUMBER")
                			dockerImage.push('latest')

												    }
					}
			}
							}
	
	}
}
