# Hugo Personal

Experimentation of using various technologies to deploy a simple, static website.

#### Website

The main site can be found on [m1r5h.xyz](m1r5h.xyz). This is hosted on Cloudflare, and utilises the free Tier of [Cloudflare Pages](https://pages.cloudflare.com) to host a static Hugo website. It builds the site automatically off the main branch as soon as there is a new commit/merge to `main`.

The website uses the coder theme, which can be found [here](https://themes.gohugo.io/themes/hugo-coder/).

There is also a Github action to build a container image with the compiled static content, fronted by nginx. Credit goes to hugomods.com for the creation of the Docker image. As I use different architectures, the gitHub action builds both `arm64` and `amd64`, allowing me to deploy this on M1 as well as different Linux flavours.

#### Kubernetes

Finally, there are also various manifests, such as within `k8s/` and `argocd/` - again, just for the purpose of learning and displaying different technologies, such as GitOps, Service Mesh etc. I'm using OrbStack to run these on my laptop locally.

##### Installed

- Istio
- Kiali
- ArgoCD


