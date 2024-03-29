# docker-octant
https://github.com/vmware/octant A web-based, highly extensible platform for developers to better understand the complexity of Kubernetes clusters

A simple docker image for Octant, A web-based, highly extensible platform for developers to better understand the complexity of Kubernetes clusters.

Dependencies:
docker
docker-compose (not mandatory)
kubectl
An active kubernetes cluster
Getting Started:
With docker-compose
version: '3'
services:
  [...]

  octant:
  image: octant:latest"
    network_mode: host
    environment:
      - "OCTANT_DISABLE_OPEN_BROWSER=true"
      - "OCTANT_LISTENER_ADDR=0.0.0.0:9000"
      - "KUBECONFIG=/output/kubeconfig.yaml"
    volumes:
      - "~/.kube/config:/output/kubeconfig.yaml"
With docker
docker run -d \
    --name="octant" \
    --network="host" \
    -e "OCTANT_DISABLE_OPEN_BROWSER=true" \
    -e "OCTANT_LISTENER_ADDR=0.0.0.0:9000" \
    -e "KUBECONFIG=/output/kubeconfig.yaml" \
    -v "~/.kube/config:/output/kubeconfig.yaml" \
    rhyu/octant:latest
Visit http://localhost:9000
