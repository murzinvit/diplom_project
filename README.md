#### diplom_project </br>


---
`pip install ansible-base==2.10.17` - обновление ansible  </br>
`git clone https://github.com/ahmetb/kubectx` - установка kubens </br>
`kubectl cluster-info` </br>

---
`helm repo add stable https://charts.helm.sh/stable` </br>
`helm repo update` </br>
`kubectl create namespace monitoring` </br>
`helm install my-prometheus stable/prometheus -n monitoring` </br>

    kubectl apply -f - << EOF
    apiVersion: v1
    kind: Service
    metadata:
      name: promet-svc-lb
    spec:
      ports:
      - port: 80
        name: promet-svc-lb
        targetPort: 80
      selector:
        app: my-prometheus-server
      type: LoadBalancer
    EOF



