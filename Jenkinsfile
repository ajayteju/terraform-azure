pipeline{
    agent any
    tools {
    terraform 'terraform-azure'
    }
    stages{
        stage('git checkout') {
            steps{
               git branch: 'feature/for_each', credentialsId: '6bc41172-b2ce-40b2-8f7b-c766bbeeadc7', url: 'https://github.com/ajayteju/terraform-azure/'
            }
        }
        stage('Stage') {
            steps{
               script {
                 withCredentials([azureServicePrincipal('withplugin')]) {
            
                   sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                   sh 'az account set -s $AZURE_SUBSCRIPTION_ID'        
                 }
               }
            }
        }
        stage('terraform init') {
            steps{
                sh 'terraform init'
            }
        } 
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }    
}
