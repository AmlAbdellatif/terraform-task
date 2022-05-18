pipeline{
    
    agent any
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
                sh "terraform init"
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
