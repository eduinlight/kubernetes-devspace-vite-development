## Kubernetes + Devspace + vite for react app development

This project is an example of using devspace for react development in a kubernetes cluster.

### Prerequisites

- [Docker](https://www.docker.com/)
- [kubernetes](https://kubernetes.io/)
- [kubens](https://github.com/ahmetb/kubectx/blob/master/kubens)
- [K3D](https://k3d.io/)
- [Devspace](https://www.devspace.sh/)

### Development

First you need to prepare the cluster and create the `app` kubernetes namespace.

```BASH
devspace run k3d
```

After all is being set just run devspace to the start development mode with `vite`.

```BASH
devspace dev
```
