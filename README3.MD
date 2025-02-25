Task 3: Ingress Configuration
· Objective: Set up an ingress controller to route incoming traffic to the NGINX web server.
· Deploy an Ingress Controller (like NGINX Ingress Controller).
· Define Ingress resources to expose the NGINX web server to external traffic.
· Configure Ingress rules for routing HTTP requests to the NGINX server's pods.

1. install the NGINX Ingress Controller using Helm:
 $ helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
 $ helm install ingress-nginx ingress-nginx/ingress-nginx
2. Create a new file called nginx-web/templates/ingress.yaml
3. Update the nginx-web/values.yaml to include ingress configuration:
ingress:
  enabled: true
  className: nginx
  host: nginx.local
4. Get the ingress controller's external IP or hostname:
 $ kubectl get svc ingress-nginx-controller
6. Then add the domain to your local hosts file (/etc/hosts on Linux/Mac):
# Add this line to /etc/hosts (replace EXTERNAL_IP with the actual IP)
EXTERNAL_IP nginx.local
7. Test the connection from cli or in your browser curl http://nginx.local
"Welcome to NGINX on Kubernetes!
This page is served using NGINX deployed with Helm."
