# Commit-Build-Compose-ECR-EC2
A full pipeline to create running copies of docker images in EC2 instances

# Pipeline
CodeCommit for source code repository. CodeBuild for building docker images and pushing into ECR repository. CodeDeply deploys the image in EC2 Instances with port mappings. This produces the result of a simple nginx server mapped 8080:80.

# EC2 Deployment
For deployment into EC2 instances, require an installation of CodeDeploy Agent. The Agent fetches the appspec.yml and executes the lifecycle hooks one by one.
The hooks that the user can define are ApplicationStop, BeforeInstall, AfterInstall, ApplicationStart and ValidationService. Describe actions in each hooks to create a running docker image in EC2.

The agent logs for EC2 instances are available in 
``/opt/codedeploy-agent/deployment-root/deployment-logs/codedeploy-agent-deployments.log``
