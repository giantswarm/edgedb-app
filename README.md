[![CircleCI](https://dl.circleci.com/status-badge/img/gh/giantswarm/edgedb-app/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/giantswarm/edgedb-app/tree/main)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/giantswarm/edgedb-app/badge)](https://securityscorecards.dev/viewer/?uri=github.com/giantswarm/edgedb-app)

# EdgeDB chart

This repository contains a slightly opinionated Helm chart for running EdgeDB in a Giant Swarm cluster.
It assumes an externally managed PostgreSQL instance will be provided.

**Why did we add it?**

EdgeDB is a graph database that uses PostgreSQL as a back end. Several capabilities of the Giant Swarm security platform, and specifically Policy API, benefit from the capabilities of a graph database. This app supports those capabilities.

**Who can use it?**

The chart is slightly opinionated for Giant Swarm's use case, but may be generic enough to be used by others. PRs are welcome.

Note to Giant Swarm customers: EdgeDB is used internally in our platform, and not currently offered as a managed app. You are welcome to use this chart if it suits your needs, but it will not be monitored and support will be on a best-effort basis.

## Installing

There are several ways to install this app onto a workload cluster.

- [Using GitOps to instantiate the App](https://docs.giantswarm.io/advanced/gitops/apps/)
- [Using our web interface](https://docs.giantswarm.io/platform-overview/web-interface/app-platform/#installing-an-app).
- By creating an [App resource](https://docs.giantswarm.io/use-the-api/management-api/crd/apps.application.giantswarm.io/) in the management cluster as explained in [Getting started with App Platform](https://docs.giantswarm.io/getting-started/app-platform/).

## Configuring

See our [full reference on how to configure apps](https://docs.giantswarm.io/getting-started/app-platform/app-configuration/) for more details.

## Credit

- [EdgeDB][edgedb]
- Chart originally based on the [nanak8s edgedb charts][nanak8s]

[edgedb]: https://github.com/edgedb/edgedb
[nanak8s]: https://github.com/Japan7/nanak8s/tree/main/charts/edgedb
