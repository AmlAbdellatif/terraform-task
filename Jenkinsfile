pipeline{
    
    agent any
    tools
       {
            terraform 'terraform-11'
       }
    stages{
        stage('Git Checkout')
          {
            steps
            {  
                withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
            }
          }
        stage('Terraform Init')
          {
            steps
            {
                sh """
                    terraform init
                    terraform plan
                    terraform fmt
                    """
            }
          }
        stage('Terraform apply')
          {
            steps
            {
               sh """
                     terraform workspace select dev 
                     terraform apply --auto-approve 
                 """
            }
          }
    }


    
}
