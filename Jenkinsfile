    pipeline {
        agent any
        stages {
            stage('Build Docker image') {
                steps {
                    echo 'Starting to build docker images'
                    script {
                        def client = docker.build("ayush2708/multi-client","-f ${env.WORKSPACE}/client/Dockerfile .")
                        def server = docker.build("ayush2708/multi-server","-f ${env.WORKSPACE}/server/Dockerfile .") 
                        def worker = docker.build("ayush2708/multi-worker","-f ${env.WORKSPACE}/worker/Dockerfile .")
                        docker.withRegistry('https://registry.hub.docker.com', 'DockerHub')
                        client.push()
                        server.push()
                        worker.push() 
                    }
                }
            }
             
        }
    }
