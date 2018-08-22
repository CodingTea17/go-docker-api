# Go Docker API
An itty bitty Go HTTP server that servers a single root (/) endpoint and an accompanying Dockerfile that builds a lightweight dockerimage that runs the mini-webserver. 

# Why?
The purpose of this mini-project is to be used in a larger project that uses this repo as version controlled source code. The grand plan is to create a IAC AWS centric code pipeline that will ferry this little webserver through the build process and deploy it into a production EC2 env.

# Grand Plan
1) GitHub Repo -> Push to Master triggers CloudWatch which initiates CodeBuild.
2) CodeBuild -> Pulls the latest code and builds it and stores it in ECR. CodeDeploy is notified that the build is comeplete.
3) CodeDeploy -> Takes a copy of the fresh docker image and sends it to an EC2.
4) Bask in glorious automation. Also keep improving until code writes itself without being told to do so.


