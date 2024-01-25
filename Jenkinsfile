pipeline {
    agent {
        label 'dev'
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven'
                    label 'dev'
                }
            }
            steps {
                sh 'ls -al'
                sh 'mvn clean compile'
            
            }
            post {
                always {
                    cleanWs()
                }
            }
        }
        stage('Test cases') {
            agent {
                docker {
                    args '-u root'
                    image 'maven'
                    label 'dev'
                }
            }
            steps {
                sh 'mvn test'
            }
        }
        // stage ('sonar scan'){        }
        stage('Build & Push') {
            agent {
                label 'dev'
            }
            environment {
                DOCKER_USERNAME = credentials('dockerhub_user')
                DOCKER_PASSWORD = credentials('dockerhub-pass')
                DOCKER_REPO = credentials('docker-repo')
            }
            steps {
                // sh 'docker build -t spring-boot-app . '
                sh 'docker tag spring-boot-app $DOCKER_REPO:v1 ' 
                sh 'docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD'
                sh 'docker push $DOCKER_REPO:v1'
            }
        }
        // stage('Trivy-Image-Scan') {
        //     agent {
        //         label 'dev'
        //     }
        //     steps {
        //         sh 'trivy image $DOCKER_REPO:v1'
        //     }
        // }
        // stage('Dev-deploy') {
        //     agent {
        //         docker {
        //             image 'ci-image:latest'
        //             label 'dev'
        //         }
        //     }
        //     environment {
        //         "" = ""
        //     }
        //     steps {
        //         sh 'kubectl set-context ' 
        //         sh 'helm deploy command'
        //     }
        // }
    }
}