# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.3] - 2024-06-04

### Added

- Add Cilium Network Policies for EdgeDB and managed Postgres instances.
- Push to AWS app collection.

## [0.0.2] - 2024-05-17

### Changed

- Pin minimum CPU to 250m.
- Deploy pod monitors for the postgres cluster.
- Reduce shutdown delays.
- Use Giant Swarm retagged images.

## [0.0.1] - 2024-04-19

### Added

- Create initial chart.
- Add TLS for EdgeDB.
- Optionally deploy CNPG postgres cluster resource.

### Changed

- Push to control-plane catalog. Do not push to playground.

[Unreleased]: https://github.com/giantswarm/edgedb-app/compare/v0.0.3...HEAD
[0.0.3]: https://github.com/giantswarm/edgedb-app/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/giantswarm/edgedb-app/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/giantswarm/edgedb-app/releases/tag/v0.0.1
