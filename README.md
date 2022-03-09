#### diplom_project </br>


---
`pip install ansible-base==2.10.17` - обновление ansible  </br>

    kubectl apply -f - << EOF
    apiVersion: v1
    kind: Service
    metadata:
      name: prometheus-lb
    spec:
      ports:
      - port: 80
        name: prometheus-lb
      targetPort: 80
      selector:
        app: my-prometheus-server
      type: LoadBalancer
    EOF



