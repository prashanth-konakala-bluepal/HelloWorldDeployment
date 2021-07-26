pipeline{
    agent any
        stages
            {
                stage("Git Clone")
                    {
                        steps
                            {
                                git branch: 'main', url: 'https://github.com/prashanth-konakala-bluepal/HelloWorldDeployment.git'
                            }
                    }
                stage("MVN Build")
                    {
                        steps
                            {
                                sh "mvn clean package"
                            }
                    }
                stage("Docker Build")
                    {
                        steps
                            {
                                sh 'docker version'
                                sh 'docker build -t HelloWorldDeployment .'
                                sh 'docker image list'
                                sh 'docker tag HelloWorldDeployment prashanth-konakala-bluepal/HelloWorldDeployment:HelloWorldDeployment'
                            }
                    }
            }   
}