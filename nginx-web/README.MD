Already installed on the test machine - minikube

Task 1: Deploy NGINX Web Server to K8s
· Objective: Deploy the NGINX web server application onto the K8s cluster.
· Create Kubernetes Helm chart to deploy the NGINX web server application.
· Create a simple web page for the NGINX web server using K8s ConfigMap object.
· Configure necessary environment variables, secrets, and volume mounts required by the NGINX server.

Solution:

1. create a new Helm chart structure as follow:
   nginx-web/
   ├── Chart.yaml
   ├── values.yaml
   ├── templates/
   │ ├── deployment.yaml
   │ ├── service.yaml
   │ ├── configmap.yaml
   │ ├── secret.yaml
   │ └── \_helpers.tpl
   └── files/
   └── index.html

2. Update the files with code.
3. Deploy the Helm chart:
   $ helm install nginx-web ./nginx-web

# Verify the deployment

kubectl get pods
kubectl get services 4. Run command:
$ minikube service nginx-web --url
Copy the path past in your browser and get:
"Welcome to NGINX on Kubernetes!
This page is served using NGINX deployed with Helm."
