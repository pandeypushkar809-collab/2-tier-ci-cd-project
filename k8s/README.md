Kubernetes Deployment on AWS EKS
📌 Overview

This directory contains Kubernetes manifests used to deploy a 2-Tier Application on Amazon EKS.
https://github.com/pandeypushkar809-collab/2-tier-ci-cd-project
The application consists of:

Frontend Application
Backend Application

The deployment demonstrates:

Amazon EKS Cluster Creation
Kubernetes Deployments
Kubernetes Services
LoadBalancer Exposure
Replica Scaling
Pod Management
Container Orchestration
📂 Kubernetes Files
k8s/
│
├── backend-deployment.yaml
├── backend-service.yaml
├── frontend-deployment.yaml
└── frontend-service.yaml
🚀 EKS Cluster Setup
Create EKS Cluster
eksctl create cluster \
--name two-tier-cluster \
--region ap-south-1 \
--nodegroup-name workers \
--nodes 2

Purpose:
Creates an Amazon EKS cluster with worker nodes.

Verify Cluster
eksctl get cluster

Purpose:
Verifies cluster status.

Verify Kubernetes Connection
kubectl cluster-info

Purpose:
Checks communication between kubectl and EKS cluster.

Verify Worker Nodes
kubectl get nodes

Purpose:
Displays available worker nodes.

🚀 Deploy Application
Deploy Backend
kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml

Purpose:
Creates backend pods and service.

Deploy Frontend
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

Purpose:
Creates frontend pods and exposes application through LoadBalancer.

🔍 Verification Commands
View Running Pods
kubectl get pods

Purpose:
Displays pod status.

View Deployments
kubectl get deployments

Purpose:
Displays deployment information and replica count.

View Services
kubectl get svc

Purpose:
Displays ClusterIP and LoadBalancer endpoints.

📈 Scaling Demonstration
Scale Frontend
kubectl scale deployment frontend --replicas=4

Purpose:
Increases frontend replicas from current count to 4.

Scale Backend
kubectl scale deployment backend --replicas=4

Purpose:
Increases backend replicas from current count to 4.

Verify Scaling
kubectl get pods
kubectl get deployments

Purpose:
Confirms additional replicas are running successfully.

☸️ Kubernetes Resources Used
Pod
Deployment
ReplicaSet
Service
LoadBalancer
Node
EKS Cluster
🛠 Skills Demonstrated
Amazon EKS
Kubernetes Administration
Deployments & Services
Container Orchestration
Application Scaling
LoadBalancer Configuration
Pod Management
High Availability

👨‍💻 Author

Pushkar Pandey

DevOps | AWS | Docker | Kubernetes | Terraform

## 1. EKS Cluster Creation
<img width="1147" height="235" alt="Screenshot 2026-05-30 014056" src="https://github.com/user-attachments/assets/c0cd9e6a-7bee-41e5-9c29-63791c2972cd" />

## 2. Worker Nodes Verification
<img width="896" height="138" alt="Screenshot 2026-05-30 014119" src="https://github.com/user-attachments/assets/dc1cddcc-2046-41bb-adf1-fa1c9afee454" />

## 3. Kubernetes System Pods
<img width="777" height="225" alt="Screenshot 2026-05-30 014215" src="https://github.com/user-attachments/assets/b9f84260-680f-4cb2-8dc3-5733370b17e7" />

## 4. Application Pods Running
<img width="582" height="148" alt="Screenshot 2026-05-30 020816" src="https://github.com/user-attachments/assets/009afd60-330f-4885-a778-8505afd532ae" />

## 5. Deployments and Services
<img width="1351" height="238" alt="Screenshot 2026-05-30 020953" src="https://github.com/user-attachments/assets/acdb3419-d34c-4204-9c64-cc2670e452e6" />

## 6. AWS Load Balancer
<img width="1338" height="119" alt="Screenshot 2026-05-30 021103" src="https://github.com/user-attachments/assets/9a393eda-b053-4469-a8d6-8af39ff743ef" />

## 7. ReplicaSet Verification
<img width="652" height="491" alt="Screenshot 2026-05-30 022848" src="https://github.com/user-attachments/assets/c4b37b0f-5f8e-4aa4-9f1c-70487d5d432c" />

## 8. Scaling Demonstration
<img width="562" height="81" alt="Screenshot 2026-05-30 023454" src="https://github.com/user-attachments/assets/cda515cd-19c5-4b2b-9bdb-236fff50e89b" />

## 9. Application Access
<img width="559" height="322" alt="Screenshot 2026-05-30 024726" src="https://github.com/user-attachments/assets/120ba7df-79fe-4740-a1b4-88130593960d" />

## 10. Frontend-running-successfully
<img width="427" height="155" alt="Screenshot 2026-05-30 025815" src="https://github.com/user-attachments/assets/cef99efd-235b-4f6a-9a24-c0e5ba7a36bd" />

## 11. Workflow
<img width="1338" height="551" alt="workflow" src="https://github.com/user-attachments/assets/5d96c988-822d-4fbe-9673-f4d6a55fcbbd" />

Upcoming Enhancements
⬜ ConfigMap for externalized application configuration
⬜ Kubernetes Secrets for sensitive data management











