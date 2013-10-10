# ElasticSearch

ElasticSearch 0.90.5

Uses `elasticsearch` as the entrypoint with default options of `-f`

See the list of plugins you can install in run.sh

* `docker build -t elasticsearch .`
* `docker run -e PLUGINS=head,paramedic elasticsearch`

Ports

* 9200
* 9300
