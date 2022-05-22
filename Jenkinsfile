pipeline{
    
    agent any
    tools 
      {
        terraform 'terraform'
      }
    stages{
       
    
        stage('Terraform apply')
        {
            steps
            {
                
                  script 
                {
                    echo 'appling terraform ...'
                    withAWS(credentials: 'aws') 
                    {
                        sh 'terraform  destroy --var-file dev.tfvars -auto-approve'   
                    }
            
                } 
             
            }
         }
    }
}
