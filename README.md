# devops-test-1
This Terraform Script is created for setting up Cluster
Please go step by Step.
1. Create VPC:
   Please access "emr-tasks/dev/" location of this repo and check below steps.
   
      i. Please run " terraform init " command to initialize all modules and sources.

      ii. Now run " terraform plan " to view the way forward of this terrform.

      iii. Now run " terraform apply " to finally start creating VPC
  
2. Create EMR Cluster:
   To create ERM Cluster, please go to " terraform-aws-emr-cluster/ " directory of this repo amd run below steps.
   i. Please run " terraform init" command to initialize all modules.
   ii. Now run " terrform plan " to view the plan of this terrform file and few entries as written below.
     
  #-------------------------------------------------------------#

  var.vpc_id
    VPC ID to create the cluster in (e.g. `vpc-a22222ee`)

    Enter a value: vpc-0fea2a06f80131f80

  provider.aws.region
    The region where AWS operations will take place. Examples are us-east-1, us-west-2, etc.

    Enter a value: us-east-1

  #-------------------------------------------------------------#

We have to provide VPC name and region, I have used us-east-1 region.
     
  iii. Now run " terraform apply " and same variables as shown above for terraform plan, once the correct variables are provided, the emr setup is create.

Once the EMR Cluster is ready, now we can ssh into master server, Master server hostname will be displayed at the end of the EMR cluster setup, we have to access and run 2nd and 3rd bash script to get result.

I have created S3 bucket to hold script "health_violations.py" and input sample data "food_establishment_data.csv" which I have used in this setup.

  Note: I have create first-key named ssh-key which will be shared in email for acces purpose.
      - Bucket Name: devops-test-results-1122
      - I have created a VM in N. Virginia, because the price of this region is lower then others.
      - VM which is created in N. Virginia named Bastion, is having full access role, I could have used my person Laptop with full access IAM user, but thats not recommended.
      - I have granted access to my IP only to this VM, so please allow your IP before accessing VM.
