pipeline{
    
    agent any
    tools 
      {
        terraform 'terraform'
      }
    stages{
        stage('Terraform Init')
        {  
            steps 
            {
                script 
                {
                    echo 'initializing terraform ...'
                    withAWS(credentials: 'aws') 
                    {
                        sh 'terraform  init -reconfigure'                    }
            
                }   
            
            }
        }
    
        stage('Terraform apply')
        {
            steps
            {
                
                  script 
                {
                    echo 'appling terraform ...'
                    withAWS(credentials: 'aws') 
                    {
                        sh 'terraform  apply --var-file dev.tfvars -auto-approve'   
                    }
            
                } 
             
            }
         }
    }
}
