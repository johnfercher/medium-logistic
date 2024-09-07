#!/bin/bash

docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j-br/data:/data \
    --volume=$HOME/neo4j-br/import:/var/lib/neo4j/import \
    --env NEO4J_PLUGINS='["graph-data-science"]' \
    tech-neo4j &