pipeline {
    agent any // Utilizará qualquer pipeline, depois ver como utilizar `container agents`

    stages {
        stage ('Build Docker Image') {
            steps {
                script {
                    img = docker.build("mcmacedo/jenkins-basico-veronez:${env.BUILD_ID}")
                }
            }
        }

        stage ('Push Docker Image to Register') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-user') {
                        img.push('latest')
                        img.push("${env.BUILD_ID}")
                    }
                }
            }
        }
    }
}