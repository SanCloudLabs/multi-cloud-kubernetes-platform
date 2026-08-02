# Kubernetes Resources

This directory contains the Kubernetes manifests used to deploy a sample NGINX application on both **Amazon EKS** and **Azure AKS**.

The manifests are cloud-agnostic and can be deployed to any conformant Kubernetes cluster.

---

# Directory Structure

```text
kubernetes/
├── namespace/
│   └── namespace.yaml
│
├── nginx/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── configmap.yaml
│
├── ingress/
│   └── ingress.yaml
│
├── hpa/
│   └── hpa.yaml
│
├── network-policy/
│   └── network-policy.yaml
│
└── README.md
```

---

# Resources

## Namespace

Creates the `demo-app` namespace to logically isolate the application resources.

---

## Deployment

Deploys an NGINX application with:

- Two replicas
- Rolling update strategy
- CPU and memory requests/limits
- Readiness probe
- Liveness probe
- ConfigMap volume mount

---

## Service

Creates a ClusterIP service that exposes the application internally within the Kubernetes cluster.

---

## ConfigMap

Provides the HTML content served by the NGINX application.

The ConfigMap is mounted into the container as a file.

---

## Ingress

Configures HTTP routing for the application using the NGINX Ingress Controller.

---

## Horizontal Pod Autoscaler

Automatically scales the Deployment based on CPU utilization.

Configuration:

- Minimum replicas: 2
- Maximum replicas: 5
- Target CPU utilization: 70%

---

## Network Policy

Restricts ingress traffic to application Pods within the `demo-app` namespace.

---

# Deployment Order

Apply the manifests in the following order:

```bash
kubectl apply -f namespace/
kubectl apply -f nginx/
kubectl apply -f ingress/
kubectl apply -f hpa/
kubectl apply -f network-policy/
```

---

# Verify Deployment

Check all resources:

```bash
kubectl get all -n demo-app
```

View Pods:

```bash
kubectl get pods -n demo-app
```

View Services:

```bash
kubectl get svc -n demo-app
```

View Ingress:

```bash
kubectl get ingress -n demo-app
```

View Horizontal Pod Autoscaler:

```bash
kubectl get hpa -n demo-app
```

View Network Policies:

```bash
kubectl get networkpolicy -n demo-app
```

---

# Cleanup

Delete all resources:

```bash
kubectl delete -f network-policy/
kubectl delete -f hpa/
kubectl delete -f ingress/
kubectl delete -f nginx/
kubectl delete -f namespace/
```

---

# Best Practices Demonstrated

- Namespace isolation
- Rolling updates
- Health probes
- Resource requests and limits
- Configuration management using ConfigMaps
- Internal service discovery
- Ingress-based routing
- Horizontal Pod Autoscaling
- Network segmentation using Network Policies

---

# Compatibility

These manifests are designed to work with:

- Amazon EKS
- Azure AKS
- Any CNCF-conformant Kubernetes cluster

---

# Notes

The Kubernetes manifests in this directory are intentionally cloud-agnostic. Infrastructure provisioning is handled separately using Terraform, allowing the same application manifests to be deployed across different Kubernetes environments.
