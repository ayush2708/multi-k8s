node {
    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {

        def customImage = docker.build("ayush2708/multi-client")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
