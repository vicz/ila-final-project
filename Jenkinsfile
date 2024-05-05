// library identifier: 'pipelines_library@main', retriever: modernSCM([
//     $class: 'GitSCMSource',
//     credentialsId: 'jenkins-bitbucket', 
//     remote: 'https://bitbucket.oak.in.ua/scm/infdel/pipelines_library.git'
// ])

pipeline {
    agent any

    environment {
        test_string = "Hello there!"
    }

    stages {
        stage('Build') {
            steps {
                echo sha256sum(test_string)
                script {
                    sh """
                    set -e
                    ls -la

                    echo -n '${test_string}' > tmp.file
                    sha256sum tmp.file
                    """
                }
            }
        }
    }
}
