pipeline { 
    environment { 
        registry = "https://registry.hub.docker.com" 
        registryCredential = 'DockerHub' 
        client = '' 
        server = ''
        worker = ''
    }
    agent any 
    stages { 
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/ayush2708/multi-k8s.git' 
            }
        } 
        stage('Building our image') { 
            steps { 
                script { 
                        client = docker.build("ayush2708/multi-client","-f ${env.WORKSPACE}/client/Dockerfile .")
                        server = docker.build("ayush2708/multi-server","-f ${env.WORKSPACE}/server/Dockerfile .") 
                        worker = docker.build("ayush2708/multi-worker","-f ${env.WORKSPACE}/worker/Dockerfile .") 
                }
            } 
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        client.push() 
                        server.push()
                        worker.push()
                    }
                } 
            }
        } 
        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $client:latest"
                sh "docker rmi $server:latest" 
                sh "docker rmi $worker:latest"
            }
        } 
    }
}