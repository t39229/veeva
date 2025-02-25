Task 2:
Deploy microservice caller
· Objective: Deploy an additional microservice that will endlessly call the NGINX simple web page.
· Create Kubernetes Helm chart to deploy the microservice caller application.
It could be a simple script that uses the curl command.

1. create a new Helm chart:
  $ helm create service-caller
2. Add simple script which uses curl command:
#!/bin/bash
while true; do
    curl http://nginx-web:80
    echo "Time: $(date)"
    sleep 5
done
3. Update the helm charts files.
4. install he service-caller chart:
  $ helm install service-caller ./service-caller
5. Verify the deployment:
  kubectl get pods
  kubectl logs -f <service-caller-pod-name>
6. Run test the call NGINX simple web page.
  $ kubectl logs -f $(kubectl get pods -l app.kubernetes.io/name=service-caller -o jsonpath='{.items[0].metadata.name}')
  
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to NGINX</title>
</head>
<body>
    <h1>Welcome to NGINX on Kubernetes!</h1>
    <p>This page is served using NGINX deployed with Helm.</p>
</body>
</html>  
  
  


