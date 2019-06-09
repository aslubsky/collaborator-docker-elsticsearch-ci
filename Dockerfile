FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.14

ENV cluster.name=docker-els
ENV bootstrap.memory_lock=true
ENV xpack.security.enabled=false
ENV indices.query.bool.max_clause_count=10000
ENV ES_JAVA_OPTS=-Xms512m -Xmx512m
ENV ES_PLUGINS_INSTALL=analysis-icu

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
