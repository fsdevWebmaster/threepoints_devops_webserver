pipeline {
    agent 
      {
        label 'docker'
      }

    stages {
        // stage('Checkout') {
        //     steps {
        //         // Check out your source code from your version control system
        //         checkout scm
        //     }
        // }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build("my-docker-image:latest", ".")

                    // Push the image to a container registry (optional)
                    // docker.image("my-docker-image:latest").push()
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container from the built image
                    docker.image("my-docker-image:latest").run("--rm -d -p 8080:80")
                }
            }
        }
    }

    // post {
    //     success {
    //         // Add post-build actions if needed
    //     }
    // }
}
