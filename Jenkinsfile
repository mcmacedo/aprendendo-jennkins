pipeline {
    agent any // Utilizará qualquer pipeline, depois ver como utilizar `container agents`

    stages {
        stage ('Build Docker Image') {
            steps {
                script {
                    img = docker.build("mcmacedo/jenkins-basico-veronez")
                }
            }
        }
    }
}