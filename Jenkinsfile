    pipeline {
        agent any
        stages {
            stage('Build Docker image') {
                steps {
                    echo 'Starting to build docker images'
                    script {
                        def client = docker.build("ayush2708/multi-client","-f ${env.WORKSPACE}/multi-k8s/client/Dockerfile .")
                        def server = docker.build("ayush2708/multi-server","-f ${env.WORKSPACE}/multi-k8s/server/Dockerfile .") 
                        def worker = docker.build("ayush2708/multi-worker","-f ${env.WORKSPACE}/multi-k8s/worker/Dockerfile .") 
                    }
                }
            }
        }
    }
