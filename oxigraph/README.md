# oxigraph replacing blazegraph

A docker installation if you want [oxigraph](https://github.com/oxigraph/oxigraph) instead of blazegraph to serve ResearchSpace.

## Why?

- blazegraph development is abandoned
- oxigraph is a performant in-development graph database implementing the SPARQL standard. It come with many supplementary libraries and packages to integrate it into various frameworks.

## Prerequisites

- Currently only work with ResearchSpace image `researchspace/platform-ci:oxigraph-fix`
- Make sure to enable the `--union-default-graph` flag at CLI startup
- you must create a default.ttl `\researchspace\runtime-data\config\repositories\default.ttl`
- if you need to have the service proxied (as for `full-setup`), add your config at the end of `full-setup\nginx\nginx.tmpl` (see also https://github.com/oxigraph/oxigraph/tree/main/cli#run-the-web-server-with-basic-authentication)