pipeline{
    
    agent any
    stages{
        stage('Terraform Init')
        {  
            steps {
                withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                  
                    sh """
                    terraform init
                    terraform plan
                    """
                    
                    }
                }
            }
        stage('Terraform apply')
          {
            steps
            {
               sh """
                     terraform workspace select dev 
                     terraform apply  -var-file dev.tfvars  --auto-approve 
                 """
            }
          }
    }


    
}
