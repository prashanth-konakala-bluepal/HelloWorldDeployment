currentBuild.displayName = "K8s-Deployment-#"+currentBuild.number

pipeline{
    
    agent any

    environment
        {
            DOCKER_TAG = getDockerTag()
        }
        
        
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
                                script
                                    {
                                        def MVN_PATH = tool (name: 'maven3.8.1', type: 'maven')+"/opt/apache-maven-3.6.3/bin/mvn"
                                        sh "$MVN_PATH clean package"
                                    }
                                //sh "mvn clean package"
                                // sh "mv /var/lib/jenkins/workspace/Docker_Image_pulling/webapp/target/*.war /var/lib/jenkins/workspace/Docker_Image_pulling/webapp/target/HelloWorld.war"
                            }
                    }
                stage("Build Docker Image")
                    {
                        steps
                            {
                                sh "docker build . -t prashanth-konakala-bluepal/hello_world_deployment:${Docker_TAG} "
                                // sh "docker tag HelloWorldDeployment prashanth-konakala-bluepal/HelloWorldDeployment:HelloWorldDeployment"
                            }
                    }
            }   
}

def getDockerTag()
    {
        def tag = sh script: 'git rev-parse HEAD', returnStdout: true
        return tag
    }