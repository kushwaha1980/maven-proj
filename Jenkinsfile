pipeline{
  agent any
  environment {
    PASS = credentials('DPASS')
  }
  stages{
    stage("build-stage"){
	  steps{
		echo 'Running build automation'
	    sh "/home/ec2-user/jenkins/pipeline/build/mvn.sh mvn -B -DskipTests clean package"
		sh "/home/ec2-user/jenkins/pipeline/build/build.sh"
	  }
	}
	stage("Test-stage"){
	  steps{
	    sh "/home/ec2-user/jenkins/pipeline/build/mvn.sh mvn test"
	  }
	}
	stage("push-stage"){
	  steps{
	    sh "/home/ec2-user/jenkins/pipeline/build/push.sh"
	  }
	}
	
	stage("deploy-stage"){
	  steps{
	    sh "/home/ec2-user/jenkins/pipeline/build/deploy.sh"
	  }
	}
  }
}
