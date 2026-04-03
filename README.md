# DevOps Project: Brain-Tasks-App Deployment

This repository contains the production-ready deployment of the Brain-Tasks-App. It focuses on CI/CD automation using AWS services and Kubernetes, serving a pre-compiled `dist/` directory.

## Live Application
- **LoadBalancer ARN:** aa7f9921159174cd6b5c907415aa86a1-1680697478.us-east-1.elb.amazonaws.com

##  Project Architecture
- **Source:** GitHub
- **Registry:** Amazon ECR (Elastic Container Registry)
- **Orchestration:** Amazon EKS (Elastic Kubernetes Service)
- **CI/CD:** AWS CodePipeline & CodeBuild
- **Monitoring:** Amazon CloudWatch Logs

## Deployment Details
- **Containerization:** The application is containerized using Nginx to serve the static `dist/` files.
- **Port:** The application is configured to run on port 3000.
- **Scaling:** Managed via Kubernetes Deployment with 2 replicas for high availability.

##  How to Run Locally
1. Clone this repository:
   `git clone https://github.com[sowmyakc26]/[brain-tasks-submission].git`
2. Build the Docker image:
   `docker build -t brain-tasks-app .`
3. Run the container:
   `docker run -p 3000:3000 brain-tasks-app`

##  Pipeline Workflow
1. **GitHub:** Code push triggers AWS CodePipeline.
2. **CodeBuild:** 
   - Authenticates with ECR.
   - Builds the Docker image from the `dist/` folder.
   - Pushes the image to the ECR repository.
   - Updates the EKS cluster using `kubectl`.
3. **EKS:** Pulls the new image and updates the pods.

## 📸 Proof of Work



<img width="1358" height="704" alt="app in browser screenshot 1" src="https://github.com/user-attachments/assets/8203807e-1d4e-413a-af2a-a592fe13f30b" />

<img width="661" height="422" alt="external ip" src="https://github.com/user-attachments/assets/f19ba42b-a4d9-4f51-ab38-c5879edd4db7" />

<img width="1364" height="634" alt="ecr repo created screenshot 2" src="https://github.com/user-attachments/assets/81624da7-ca39-4640-ab0e-ba058a93f03c" />

<img width="662" height="415" alt="kubectl nodes screenshot 3" src="https://github.com/user-attachments/assets/46903456-ad17-4782-af80-543f53409453" />

<img width="662" height="411" alt="nano dockerfile" src="https://github.com/user-attachments/assets/6ed3c777-7289-4fc0-886e-cbb3060d7dc1" />

<img width="658" height="292" alt="kubect" src="https://github.com/user-attachments/assets/75634ce1-1e92-43cd-b919-f4694823d4ae" />

<img width="1358" height="636" alt="pipeline screenshot 5" src="https://github.com/user-attachments/assets/24130f2f-b2c6-4f89-a652-0d5700f65240" />

<img width="1352" height="703" alt="final output" src="https://github.com/user-attachments/assets/7008f575-ed1a-4ac1-869c-81d8aef37749" />

<img width="1359" height="646" alt="cloudwatch logstream" src="https://github.com/user-attachments/assets/8a4ecde2-3e9e-4318-bf9c-5cfb86be5ea3" />










