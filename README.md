# GitHubAction-ECS-Fargate-Project Repository.
## GitHub integration project with ECS-Fargate (Repo-Deatils)

## To use this workflow, you will need to complete the following set-up steps:

### 1. Create an ECR repository to store your images.
For example: `aws ecr create-repository --repository-name my-ecr-repo --region us-east-2`.
Replace the value of the `ECR_REPOSITORY` environment variable in the workflow below with your repository's name.
Replace the value of the `AWS_REGION` environment variable in the workflow below with your repository's region.

### 2. Create an ECS task definition, an ECS cluster, and an ECS service.
For example, follow the Getting Started guide on the ECS console:
https://us-east-2.console.aws.amazon.com/ecs/home?region=us-east-2#/firstRun
Replace the value of the `ECS_SERVICE` environment variable in the workflow below with the name you set for the Amazon ECS service.
Replace the value of the `ECS_CLUSTER` environment variable in the workflow below with the name you set for the cluster.

### 3. Store your ECS task definition as a JSON file in your repository.
The format should follow the output of `aws ecs register-task-definition --generate-cli-skeleton`.
Replace the value of the `ECS_TASK_DEFINITION` environment variable in the workflow below with the path to the JSON file.
Replace the value of the `CONTAINER_NAME` environment variable in the workflow below with the name of the container in the `containerDefinitions` section of the task definition.
If you are using the short WOrk-Flow Yaml file, then enter the number of task/s manually while creating the service inside the cluster.

### 4. Store an IAM user access key in GitHub Actions secrets named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
See the documentation for each action used below for the recommended IAM policies for this IAM user, and best practices on handling the access key credentials.

### 5. If we need a Load-Balancer with our service
For this, we can create an Application Load Balancer with a Target Group of IP-Address Type not Instance type as we did for EC2 based ECS deployment.
Do not select ant IP address and port while creating the target group.
Just simply create a dummy Target group.
Then Create an application load balancer with all the default settings as per the networking & SG you need & attach the created target group with the application load balancer.
And while adding this with the ECS-Service, add all the Load-Balancing stuffs from the existing one, where you will see your created TG & ALB.