# What is Kubernetes?
Answer: Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications.

# Explain Pods in Kubernetes.
Answer: A Pod is the smallest and simplest unit in the Kubernetes object model. It represents a single instance of a running process in a cluster and encapsulates one or more containers.

# What is a Deployment in Kubernetes?
Answer: A Deployment is a higher-level abstraction that allows you to declaratively manage the desired state of your application. It ensures that a specified number of pod replicas are running at all times.

# Describe the role of a Service in Kubernetes.
Answer: A Service in Kubernetes is an abstraction that exposes a set of Pods as a network service. It enables other pods to communicate with them, providing load balancing and service discovery.

# Explain Kubernetes ConfigMaps.
Answer: ConfigMaps allow you to decouple configuration artifacts from container images, keeping containerized applications portable. They can be used to store non-sensitive configuration data.

# What is the purpose of a StatefulSet in Kubernetes?
Answer: A StatefulSet is used to manage stateful applications that require stable network identifiers and persistent storage. It provides guarantees about the ordering and uniqueness of pods.

# Describe the difference between a DaemonSet and a Deployment.
Answer: A DaemonSet ensures that all (or some) nodes run a copy of a pod, while a Deployment ensures a desired number of pod replicas are running across the entire cluster.

# How does Kubernetes networking work?
Answer: Kubernetes assigns each pod a unique IP address, and containers within a pod share that IP. Services provide a consistent way to access pods, and networking plugins facilitate communication between nodes.

# Explain Ingress in Kubernetes.
Answer: Ingress is an API object that manages external access to services within a cluster. It provides HTTP and HTTPS routing to services based on rules defined by the user.

# How would you troubleshoot a pod that is not starting?
Answer: Check the pod's events (kubectl describe pod <pod-name>), review the container logs (kubectl logs <pod-name>), and ensure that the required resources and dependencies are available.

# What is a liveness probe, and how is it different from a readiness probe?
Answer: A liveness probe checks if a container is running, while a readiness probe checks if a container is ready to handle requests. They help Kubernetes determine when to restart or stop containers.

# Explain Kubernetes RBAC (Role-Based Access Control).
Answer: RBAC is a Kubernetes feature that regulates access to the Kubernetes API. It defines what actions a user, group, or service account can perform.

# How can you secure communication between pods in a Kubernetes cluster?
Answer: Using Network Policies, you can define rules to control the communication between pods. This adds a layer of security by restricting which pods can communicate with each other.

# how install?
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo apt update
sudo apt install -y kubelet kubeadm kubectl
# on master
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
# on current user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
# Install a Pod Network Addon
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Worker Node Setup
kubeadm join
kubectl get nodes
kubectl version
kubectl cluster-info
kubectl get pods
kubectl describe pod mypod
kubectl create -f mypod.yaml
kubectl apply -f mypod.yaml
kubectl delete pod mypod
kubectl exec -it mypod -- /bin/bash
kubectl logs mypod
kubectl scale deployment myapp-deployment --replicas=3
kubectl port-forward mypod 8080:80
kubectl get nodes -o wide

# Here are some key Kubernetes terminology and fundamentals:
# Node: 
A physical or virtual machine that runs your containers. Each node has a container runtime (like Docker) and the necessary services to communicate with the master.
# Cluster: 
A set of nodes that work together. The cluster is the foundation of your Kubernetes platform.
# Master: 
The controlling unit of a Kubernetes cluster. It manages the cluster and makes decisions about when and where to run containers.
# Pod: 
The smallest deployable units in Kubernetes. A pod represents a single instance of a running process in a cluster. It can contain one or more containers.
# Container: 
A lightweight, standalone, and executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, and settings.
# Deployment: 
A higher-level resource that defines the desired state for a set of pods. Deployments allow you to describe an application's life cycle, such as which images to use, the number of pod replicas, and the way to update them.
# Service: 
An abstraction that defines a logical set of pods and a policy by which to access them. Services enable network connectivity to a set of pods.
# ReplicaSet: 
Ensures that a specified number of replicas for a pod are running at all times. It is often used by deployments to maintain the desired number of pod instances.
# Namespace: 
A way to divide cluster resources between multiple users, teams, or projects. It provides a scope for names.
# ConfigMap and Secret: 
Resources that allow you to decouple configuration artifacts from image content to keep containerized applications portable.
# Label: 
Key-value pairs attached to objects (like pods), which can be used for grouping and selecting subsets of objects.
# Volume: 
A directory accessible to all containers in a pod, used to share data between them.
# Ingress: 
An API object that manages external access to services in a cluster, typically HTTP.
# Kubelet: 
An agent that runs on each node in the cluster. It ensures that the containers are running in a pod.
# Kube-proxy: 
Maintains network rules on nodes, allowing communication between different pods and services.
# Controller: 
A loop that regulates the state of the system (e.g., ReplicaSet Controller, Deployment Controller).
# RBAC (Role-Based Access Control): 
A Kubernetes feature that regulates access to the Kubernetes API, defining what actions a user, or system, can perform.

Kubernetes >> manage docker at scale
Kubernetes cluster in GCP
Minikube in VM
Pods >> run and manage
Kubernetes Deployment
Infra >> Host >> Hypervisor >> Guest OS >> Bins and Libs >> Apps
Infra >> OS >> Docker >> Bins and Libs >> Apps
Docker hub >> get app
Scale up and down >> Load 
Kubernetes >> 5000 servers and 150k pods
Kubernetes alternatives >> docker swarm
Docker swarm >> open source and 1000 nodes and 30k containers
Kubernetes cluster >> master node / worker and kubeadm-cli
Kubernetes test >> ubuntu 16 >> 1 master and 2 worker
Distribution >> Server Utilization Tracking >> Rollout and Rollback

