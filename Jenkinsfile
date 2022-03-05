pipeline{
    agent any
    stages{
        stage('code checkout'){
            steps{
                git 'https://github.com/Riyansh-16/paytmflight.git' 
            }
        }
        stage('static code analysis'){
            steps{
              script{
                withSonarQubeEnv('sonar8'){
                   sh 'mvn sonar:sonar'
                }
              }
           }
        }
        stage('Build the code'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('building docker image'){
            steps{
                script{
                        sh 'docker build -t riyansh16/mytomee:$BUILD_NUMBER .'
                        withCredentials([string(credentialsId: 'docker', variable: 'docker-password')]) {
                               sh 'cat /home/ubuntu/my_password.txt | docker login --username riyansh16 --password-stdin'
                               sh 'docker push riyansh16/mytomee:$BUILD_NUMBER'
                        }
                }
            }
        }
    }
}
