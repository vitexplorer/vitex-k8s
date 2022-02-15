Vitex Stats K8s
===============

Deploy Vitex Stats website on Kubernetes cluster.


Requirements
------------

- Kubernetes 1.19+
- Kubernetes enables DNS and ingress controller.
- cert manager


Install Cert Manager
--------------------
ref: https://cert-manager.io/docs/installation/
```shell
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.7.1/cert-manager.yaml
```

Build Image
-----------

- govite: use `govite/build_image.sh` to build govite image
- vitex-stats-server: refer to [vitex-stats-server](https://github.com/vitexplorer/vitex-stats) repo for instructions
- vitex-stats-server-static: refer to [vite-stats](https://github.com/vitexplorer/vitex-stats-server) repo for instructions

Before Deployment
-----------------

- set postgres DB parameters in `database/postgres-configmap.yaml`
- set identity in `govite/node-config.cm.yaml`
- set secrect, db connection uri in `vitex-stats-server/vss-flask-config-cm.yaml`
