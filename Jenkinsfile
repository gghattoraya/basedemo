pipeline {
    agent any
    agent {
    	dockerfile true
    }
	options {
		ansiColor('xterm')
	}
    stages {
        stage('ImageBuild') {
            steps {
                sh 'node --version'
                sh 'svn --version'
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
