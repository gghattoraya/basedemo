pipeline {
//    agent any
    agent {
    	dockerfile true
    }
	options {
		ansiColor('xterm')
	}
    stages {
        stage('ImageBuild') {
            steps {
                sh 'cd'
                git branch: 'main', credentialsId: 'github-jenkins-ssh-ecdsa512', url: 'git@github.com:gghattoraya/basedemo.git'
                echo 'Building base image..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Cleanup') {
			steps {
				echo 'Cleanup environment...'
			}
		}
    }
}
