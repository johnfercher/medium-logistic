#!/bin/bash

read -p 'Container ID: ' containerId
echo
echo Loading data into $containerId.

cat scripts/nodes.cypher | docker exec -i $containerId ./bin/cypher-shell -u neo4j -p supersecret
cat scripts/edges.cypher | docker exec -i $containerId ./bin/cypher-shell -u neo4j -p supersecret