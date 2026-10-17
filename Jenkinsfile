pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'war', url: 'https://github.com/awskaizen02/MAVEN01.git'
            }
        }
        stage('Maven Build') {
            steps {
                sh 'mvn clean'
                sh 'mvn install'
            }
        }
        stage('Docker Build') {
            steps {
                script{
                    app=docker.build("dockerpandian/oct17")
                    
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script{
                withDockerRegistry(credentialsId: 'dd', url: 'https://index.docker.io/v1/') {
                   app.push("${env.BUILD_NUMBER}") 
                   app.push("latest")
                    } 
                    }
            }
        }
    }
}
