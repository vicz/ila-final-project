@Library('test-lib') _

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
