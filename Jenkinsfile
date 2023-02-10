pipeline {
    agent any
    parameters {
        string(name: 'DEPLOY_ENV', defaultValue: 'production', description: 'Environment to deploy to')
        string(name: 'IMAGE_TAG', defaultValue: 'latest', description: 'Docker image tag to deploy')
    }
    stages {
        stage('Checkout Code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '<credentials_id>', url: 'https://github.com/<user>/<repo>.git']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'make build-image IMAGE_TAG=${IMAGE_TAG}'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'make push-image IMAGE_TAG=${IMAGE_TAG}'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh "make deploy-k8s DEPLOY_ENV=${DEPLOY_ENV} IMAGE_TAG=${IMAGE_TAG}"
            }
        }
    }
}