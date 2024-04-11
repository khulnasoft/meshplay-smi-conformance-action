<p style="text-align:center;" align="center"><a href="https://docs.meshplay.io/guides/smi-conformance#running-smi-conformance-tests-in-cicd-pipelines"><img align="center" style="margin-bottom:20px;" src="./.github/readme/images/SMI%20Conformance%20with%20Meshplay.jpeg" /></a><br /><br /></p>

<p align="center">
<a href="https://github.com/khulnasoft/meshplay-smi-conformance-action/releases">
<img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/release/khulnasoft/meshplay-smi-conformance-action"></a>
<a href="https://github.com/khulnasoft/meshplay-smi-conformance-action/issues">
<img alt="GitHub issues" src="https://img.shields.io/github/issues/khulnasoft/meshplay-smi-conformance-action"> </a>
<a href="https://github.com/khulnasoft/meshplay-smi-conformance-action/blob/master/LICENSE" alt="LICENSE">
<img src="https://img.shields.io/github/license/khulnasoft/meshplay.svg" /></a>
<a href="http://slack.khulnasoft.com" alt="Join Slack">
<img src="https://img.shields.io/badge/Slack-@layer5.svg?logo=slack"></a>
<a href="https://twitter.com/intent/follow?screen_name=meshplayio" alt="Twitter Follow">
<img src="https://img.shields.io/twitter/follow/layer5.svg?label=Follow+Khulnasoft&style=social" /></a>
</p>

# Meshplay - SMI Conformance GitHub Action

GitHub Action to run [SMI Conformance](https://docs.meshplay.io/functionality/service-mesh-interface) tests on CI/CD pipelines.

Meshplay is SMI's official tool for validating conformance. Learn more at [smi-spec.io](https://smi-spec.io/blog/validating-smi-conformance-with-meshplay/).

## Learn More

- [Meshplay and Service Mesh Interface](https://docs.meshplay.io/functionality/service-mesh-interface)
- [Guide: Running SMI Conformance Tests](https://docs.meshplay.io/guides/smi-conformance)
- [Conformance Test Details](https://khulnasoft.com/projects/service-mesh-interface-conformance)
- [SMI Conformance Dashboard](https://meshplay.io/service-mesh-interface) (stand-alone)
- [SMI Conformance Dashboard](https://khulnasoft.com/service-mesh-landscape#smi) (service mesh landscape)
- [Design Specification](https://docs.google.com/document/d/1HL8Sk7NSLLj-9PRqoHYVIGyU6fZxUQFotrxbmfFtjwc/edit#)

## Supported Service Meshes

Meshplay supports 10 different service meshes.

<details>
  <summary><strong>See all Supported Service Meshes</strong></summary>
<div class="container flex">
  <div class="text editable">
    <p>Service mesh adapters provision, configure, and manage their respective service meshes.
      <table class="adapters">
        <thead style="display:none;">
          <th>Status</th>
          <th>Adapter</th>
        </thead>
        <tbody>
        <tr>
          <td rowspan="9" class="stable-adapters">stable</td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-istio">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/istio.svg' alt='Meshplay Adapter for Istio Service Mesh' align="middle" hspace="10px" vspace="5px" height="30px" > Meshplay adapter for Istio</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-linkerd">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/linkerd.svg' alt='Linkerd' align="middle" hspace="5px" vspace="5px" height="30px" width="30px"> Meshplay adapter for Linkerd</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-consul">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/consul.svg' alt='Consul Connect' align="middle" hspace="5px" vspace="5px" height="30px" width="30px"> Meshplay adapter for Consul</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-octarine">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/octarine.svg' alt='Octarine Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Octarine</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-nsm">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/nsm.svg' alt='Network Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Network Service Mesh</a>
          </td>
        </tr>
         <tr>
           <td><a href="https://github.com/khulnasoft/meshplay-kuma">
             <img src='https://docs.meshplay.io/assets/img/service-meshes/kuma.svg' alt='Kuma Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Kuma</a>
           </td>
        </tr>
          <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-osm">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/osm.svg' alt='Open Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Open Service Mesh</a>
          </td>
        </tr>
        <tr><td colspan="2" class="stable-adapters"></td></tr>
        <tr>
          <td rowspan="5" class="beta-adapters">beta</td>
        </tr>
         <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-cpx">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/citrix.svg' alt='Citrix CPX Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Citrix CPX</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/khulnasoft/meshplay-traefik-mesh">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/traefik-mesh.svg' alt='Traefik Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Traefik Mesh</a>
          </td>
        </tr>
           <tr>
          <td><a href="https://github.com/meshplay/meshplay-nginx-sm">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/nginx-sm.svg' alt='NGINX Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for NGINX Service Mesh</a>
          </td>
        </tr>
        <tr><td colspan="2" class="beta-adapters"></td></tr>
        <tr>
          <td rowspan="3" class="alpha-adapters">alpha</td>
        </tr>
        <tr>
          <td><a href="https://github.com/meshplay/meshplay-tanzu-sm">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/tanzu.svg' alt='Tanzu Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for Tanzu SM</a>
          </td>
        </tr>
        <tr>
          <td><a href="https://github.com/meshplay/meshplay-app-mesh">
            <img src='https://docs.meshplay.io/assets/img/service-meshes/app-mesh.svg' alt='AWS App Mesh Service Mesh' align="middle" hspace="5px" vspace="5px" height="30px" width="30px">Meshplay adapter for App Mesh</a>
          </td>
        </tr>
        <tr><td colspan="2" class="alpha-adapters"></td></tr>
        </tbody>
    </table>
  </p>
</div>
 </details>
 
## Usage

See [action.yml](action.yml)

By default, this action brings its own Kubernetes cluster(minikube), deploys the latest release of the service mesh specified and runs conformance tests (see [Running on latest release](#running-on-latest-release)).

You can however bring your own clusters with a specific version of a service mesh installed and Meshplay would automatically detect your environment and run the conformance test accordingly (see [Running on specific version](#running-on-specific-version)).

See [Running SMI Conformance Tests in CI/CD Pipelines](https://docs.meshplay.io/guides/smi-conformance#running-smi-conformance-tests-in-cicd-pipelines) for detailed instructions on setting up Meshplay and authenticating the GitHub action.

### Sample Configurations

#### Running on latest release

Meshplay would handle setting up the environment, deploying the service mesh and running the conformance tests.

```yaml
name: SMI Conformance with Meshplay
on:
  push:
    tags:
      - 'v*'

jobs:
  smi-conformance:
    name: SMI Conformance
    runs-on: ubuntu-latest
    steps:

      - name: SMI conformance tests
        uses: khulnasoft/meshplayctl-smi-conformance-action@master
        with:
          provider_token: ${{ secrets.MESHPLAY_PROVIDER_TOKEN }}
          service_mesh: open_service_mesh
          mesh_deployed: false
```

#### Running on specific version 
(bring your own cluster)

The environment with the service mesh installed provided by the user and Meshplay runs the conformance tests.

```yaml
name: SMI Conformance with Meshplay
on:
  push:
    branches:
      - 'master'

jobs:
  smi-conformance:
    name: SMI Conformance tests on master
    runs-on: ubuntu-latest
    steps:

      - name: Deploy k8s-minikube
        uses: manusa/actions-setup-minikube@v2.4.1
        with:
          minikube version: 'v1.21.0'
          kubernetes version: 'v1.20.7'
          driver: docker

      - name: Install OSM
        run: |
           curl -LO https://github.com/openservicemesh/osm/releases/download/v0.9.1/osm-v0.9.1-linux-amd64.tar.gz
           tar -xzf osm-v0.9.1-linux-amd64.tar.gz
           mkdir -p ~/osm/bin
           mv ./linux-amd64/osm ~/osm/bin/osm-bin
           PATH="$PATH:$HOME/osm/bin/"
           osm-bin install --osm-namespace default

      - name: SMI conformance tests
        uses: khulnasoft/meshplayctl-smi-conformance-action@master
        with:
          provider_token: ${{ secrets.MESHPLAY_PROVIDER_TOKEN }}
          service_mesh: open_service_mesh
          mesh_deployed: true
```

## Reporting Conformance

Service mesh projects can report their SMI Conformance results automatically and update it on the [SMI Conformance Dashboard](https://meshplay.io/service-mesh-interface).

See [Reporting Conformance](https://docs.meshplay.io/functionality/service-mesh-interface#reporting-conformance) for details on how to setup reporting.

## Join the Community!

<a name="contributing"></a><a name="community"></a>
Our projects are community-built and welcome collaboration. 👍 Be sure to see the <a href="https://docs.google.com/document/d/17OPtDE_rdnPQxmk2Kauhm3GwXF1R5dZ3Cj8qZLKdo5E/edit">Khulnasoft Community Welcome Guide</a> for a tour of resources available to you and jump into our <a href="http://slack.khulnasoft.com">Slack</a>!

<p style="clear:both;">
<a href ="https://khulnasoft.com/community/meshmates"><img alt="MeshMates" src=".github/readme/images/Khulnasoft-MeshMentors-new.png" style="margin-right:10px; margin-bottom:7px;" width="28%" align="left" /></a>
<h3>Find your MeshMate</h3>

<p>MeshMates are experienced Khulnasoft community members, who will help you learn your way around, discover live projects and expand your community network. 
Become a <b>Meshtee</b> today!</p>

Find out more on the <a href="https://khulnasoft.com/community">Khulnasoft community</a>. <br />
<br /><br /><br /><br />
</p>

<div>&nbsp;</div>

<a href="https://slack.meshplay.io">

<picture align="right">
  <source media="(prefers-color-scheme: dark)" srcset=".github/readme/images//slack-dark-128.png"  width="110px" align="right" style="margin-left:10px;margin-top:10px;">
  <source media="(prefers-color-scheme: light)" srcset=".github/readme/images//slack-128.png" width="110px" align="right" style="margin-left:10px;padding-top:5px;">
  <img alt="Shows an illustrated light mode meshplay logo in light color mode and a dark mode meshplay logo dark color mode." src=".github/readme/images//slack-128.png" width="110px" align="right" style="margin-left:10px;padding-top:13px;">
</picture>
</a>

<a href="https://meshplay.io/community"><img alt="Khulnasoft Cloud Native Community" src=".github/readme/images//community.svg" style="margin-right:8px;padding-top:5px;" width="140px" align="left" /></a>

<p>
✔️ <em><strong>Join</strong></em> any or all of the weekly meetings on <a href="https://calendar.google.com/calendar/b/1?cid=bGF5ZXI1LmlvX2VoMmFhOWRwZjFnNDBlbHZvYzc2MmpucGhzQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20">community calendar</a>.<br />
✔️ <em><strong>Watch</strong></em> community <a href="https://www.youtube.com/playlist?list=PL3A-A6hPO2IMPPqVjuzgqNU5xwnFFn3n0">meeting recordings</a>.<br />
✔️ <em><strong>Access</strong></em> the <a href="https://drive.google.com/drive/u/4/folders/0ABH8aabN4WAKUk9PVA">Community Drive</a> by completing a community <a href="https://khulnasoft.com/newcomer">Member Form</a>.<br />
✔️ <em><strong>Discuss</strong></em> in the <a href="https://discuss.khulnasoft.com/">Community Forum</a>.<br />
</p>
<p align="center">
<i>Not sure where to start?</i> Grab an open issue with the <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Akhulnasoft+org%3Ameshplay+org%3Aservice-mesh-performance+org%3Aservice-mesh-patterns+label%3A%22help+wanted%22+">help-wanted label</a>.
</p>
