// pipeline {
//     agent any
    
//     // environment{
//     //     SCANNER_HOME= tool 'sonar-scanner'
//     // }

//     stages {
//         // stage('Git Checkout ') {
//         //     steps {
//         //         git branch: 'main', changelog: false, poll: false, url: 'https://github.com/jaiswaladi246/SpringBoot-WebApplication.git'
//         //     }
//         // }
        
//         stage('COmpile') {
//             agent {
//                 docker {
//                     image 'maven'

//                 }
//             }
//             steps {
//                     sh 'sleep 100'
//                     sh "mvn compile"
//             }
//         }
        
//         stage('Run Test Cases') {
//             steps {
//                     sh "mvn test"
//             }
//         }
        
//         // stage('Sonarqube Analysis') {
//         //     steps {
//         //             withSonarQubeEnv('sonar-server') {
//         //                 sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Java-WebApp \
//         //                 -Dsonar.java.binaries=. \
//         //                 -Dsonar.projectKey=Java-WebApp '''
    
//         //         }
//         //     }
//         // }
        
//         stage('Maven Build') {
//             steps {
//                     sh "mvn clean compile"
//             }
//         }
        
//         // stage('Docker Build & Push') {
//         //     steps {
//         //            script {
//         //                withDockerRegistry(credentialsId: 'b289dc43-2ede-4bd0-95e8-75ca26100d8d', toolName: 'docker') {
//         //                     sh "docker build -t webapp ."
//         //                     sh "docker tag webapp adijaiswal/webapp:latest"
//         //                     sh "docker push adijaiswal/webapp:latest "
//         //                 }
//         //            } 
//         //     }
//         // }
        
//         stage('Docker Image scan') {
//             steps {
//                     sh "trivy image adijaiswal/webapp:latest "
//             }
//         }
        
//     }
// }


pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
    }
}