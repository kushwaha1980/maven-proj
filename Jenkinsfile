pipeline{
  agent any
  environment {
    PASS = credentials('DPASS')
    BUID_TAG = credentials('BUID_TAG')
  }
  stages{
    stage("build-stage"){
	  steps{
	    echo 'Running build automation'
	    sh "./build/mvn.sh mvn -B -DskipTests clean package"
	    sh "./build/build.sh"
	  }
	}
	stage("Test-stage"){
	  steps{
	    sh "/var/jenkins_home/workspace/maven-proj/build/mvn.sh mvn test"
	  }
	}
	stage("push-stage"){
	  steps{
	    sh "/var/jenkins_home/workspace/maven-proj/maven-proj/build/push.sh"
	  }
	}
	
	stage("deploy-stage"){
	  steps{
	    sh "/var/jenkins_home/workspace/maven-proj/build/deploy.sh"
	  }
	}
  }
}
