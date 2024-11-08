pipeline {
    agent any

    environment {
        MAVEN_HOME = 'C:\\apache-maven\\apache-maven-3.9.9\\apache-maven-3.9.9' // Correct Maven installation path
        JAVA_HOME = 'C:\\Program Files\\Java\\jdk-21' // Adjust to your Java JDK path
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Sudiksaa2510/my-java-app.git' // Updated GitHub URL
            }
        }

        stage('Build with Maven') {
            steps {
                script {
                    // Correct way to invoke Maven with Windows path syntax
                    bat "\"${MAVEN_HOME}\\bin\\mvn\" clean install"
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t my-java-app .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run -d -p 8080:8080 my-java-app'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
