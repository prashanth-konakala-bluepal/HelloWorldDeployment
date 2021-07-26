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
            }   
}