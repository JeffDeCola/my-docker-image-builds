
# MY CHEAT SHEETS

_All sections in alphabetical order._

### DEVELOPMENT

* DEVELOPMENT ENVIRONMENTS

  * [software install methods](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/development-environments/software-install-methods-cheat-sheet)
  * [vagrant](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/development-environments/vagrant-cheat-sheet)
  * [virtualbox](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/development-environments/virtualbox-cheat-sheet)
  * [visual studio code](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/development-environments/visual-studio-code-cheat-sheet)

* LANGUAGES

  * [go](https://github.com/JeffDeCola/my-go-examples)
  * [php](https://github.com/JeffDeCola/my-php-containers)
  * [python](https://github.com/JeffDeCola/my-python-examples)

* OPERATING SYSTEMS

  * LINUX

    * [dns](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/operating-systems/linux/dns-cheat-sheet)
    * [network device configuration](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/operating-systems/linux/network-device-configuration-cheat-sheet)
    * [ssh and keys](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/operating-systems/linux/ssh-and-keys-cheat-sheet)
    * [systemd systemctl](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/operating-systems/linux/systemd-systemctl-cheat-sheet)

  * WINDOWS

    * [wsl (bash on ubuntu on windows)](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/operating-systems/windows/wsl-bash-on-ubuntu-on-windows-cheat-sheet)

  * MAC OS

* SOFTWARE ARCHITECTURES

  * API

    * [RESTful](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/api/RESTful-cheat-sheet)
    * [youtube content id api](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/api/youtube-content-id-api-cheat-sheet)
    * [youtube data api v3](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/api/youtube-data-api-v3-cheat-sheet)
    * [youtube player api](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/api/youtube-player-api-cheat-sheet)

  * AUTHORIZATION

    * [OAuth 2.0 authorization](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/authorization/OAuth-2.0-authorization-cheat-sheet)

  * MESSAGING

    * [NATS](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/messaging/NATS-cheat-sheet)

  * MICROSERVICES

    * [microservices](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/software-architectures/microservices/microservices-cheat-sheet)

* SOURCE / VERSION CONTROL

  * [git](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/development/source-version-control/git-cheat-sheet)

### INFRASTRUCTURE AS A SERVICE (IaaS)

* CLOUD SERVICES / COMPUTE

  * [aws (amazon web services)](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/infrastructure-as-a-service/cloud-services-compute/amazon-web-services-cheat-sheet)
  * [gce (google compute engine)](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/infrastructure-as-a-service/cloud-services-compute/google-compute-engine-cheat-sheet)

* DATABASE

  * [google cloud spanner](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/infrastructure-as-a-service/database/google-cloud-spanner-cheat-sheet)
  * [postgreSQL](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/infrastructure-as-a-service/database/postgreSQL-cheat-sheet)

### OPERATIONS TOOLS

* CONFIGURATION MANAGEMENT

  * [ansible](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/configuration-management/ansible-cheat-sheet)

* CONTINUOUS INTEGRATION / CONTINUOUS DEPLOYMENT

  * [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet)

* ORCHESTRATION

  * BUILDS / DEPLOYMENT / CONTAINERS

    * [docker](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/builds-deployment-containers/docker-cheat-sheet)
    * [packer](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/builds-deployment-containers/packer-cheat-sheet)
    * [terraform](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/builds-deployment-containers/terraform-cheat-sheet)

  * CLUSTER MANAGERS / RESOURCE MANAGEMENT / SCHEDULING

    * [kubernetes](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/cluster-managers-resource-management-scheduling/kubernetes-cheat-sheet)
    * [marathon](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/cluster-managers-resource-management-scheduling/marathon-cheat-sheet-sheet)
    * [mesos](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/cluster-managers-resource-management-scheduling/mesos-cheat-sheet)

  * DISCOVERY / CONFIGURATION

    * [consul](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/orchestration/discovery-configuration/consul-cheat-sheet)

* TELEMETRY

  * [grafana](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/telemetry/grafana-cheat-sheet)
  * [stackdriver](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/telemetry/stackdriver-cheat-sheet)

## VISUAL OVERVIEW

Here is my concept on how various Apps and tools fit together
for the goal of creating a service.

![IMAGE - Creating Services Environment Overview - IMAGE](pics/Creating-Services-Environment-Overview.jpg)

## MY GITHUB WEBPAGE IS UPDATED USING CONCOURSE

For fun, I use concourse to automatically update
[my GitHub Webpage](https://jeffdecola.github.io/my-cheat-sheets/) and alert me of
the changes via repo status and slack.

The update is accomplished this by copying and editing
this `README.md` file to `/docs/_includes/README.md`.
You can see the concourse task (a shell script)
[here](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/ci/scripts/readme-github-pages.sh).

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-cheat-sheets concourse ci pipeline - IMAGE](pics/my-cheat-sheets-pipeline.jpg)

For more information on using concourse for continuous integration,
refer to my cheat sheet [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).


