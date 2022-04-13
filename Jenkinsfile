pipeline{
  agent any
  environment {
    PASS = credentials('DPASS')
    BUILD_TAG = credentials('BUILD_TAG')
  }
  stages{
    stage("build-stage"){
	  steps{
	    echo 'Running build automation'
	    sh ''' 
		./build/mvn.sh mvn -B -DskipTests clean package
	    	./build/build.sh
	
	       '''
	  }
	}
	stage("Test-stage"){
	  steps{
	    sh "./build/mvn.sh mvn test"
	  }
	}
	stage("push-stage"){
	  steps{
	    sh "./build/push.sh"
	  }
	}
	
	stage("deploy-stage"){
	  steps{
	    sh "./build/deploy.sh"
	  }
	}
  }
}
