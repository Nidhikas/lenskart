pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/nidhi/Documents/Devops_Software/apache-maven-3.9.3/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			
		sh 'cp target/lenskart.war /home/nidhi/Documents/Devops_Software/apache-tomcat-9.0.76/webapps'
	}}
	
			stage('Docker build'){
		    steps {
			sh 'docker build -t nidhikashyap18/pipelineimage2 .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=container-pipeline2 nidhikashyap18/pipelineimage2 /bin/bash'
			}}
}}
