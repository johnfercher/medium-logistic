# medium-logistic

## Run

### 1. Build Dockers
```bash
make build-docker-api
make build-docker-neo4j 
```

### 2. Build Frontend
```bash
cd frontend
npm install
```

### 3. Run
```bash
make run # Terminal A - Blocking
npm run server # Terminal B - Blocking
```

## Queries
```cypher
MATCH (source:City {id: 'maceio'}), (target:City {id: 'sao_paulo'})
CALL gds.shortestPath.dijkstra.stream('projection', {
    sourceNode: source,
    targetNodes: target,
    relationshipWeightProperty: 'distance_km'
})
YIELD index, sourceNode, targetNode, totalCost, nodeIds, costs, path
RETURN
    index,
    gds.util.asNode(sourceNode).name AS sourceNodeName,
    gds.util.asNode(targetNode).name AS targetNodeName,
    totalCost,
    [nodeId IN nodeIds | gds.util.asNode(nodeId).name] AS nodeNames,
    costs,
    nodes(path) as path
ORDER BY index
```


```cypher
MATCH (a:City)-[r]->(b:City)
RETURN gds.graph.project(
'projection',
a,
b,
{
  relationshipProperties: r { .distance_km },
  relationshipType: type(r)
}
)
```


```cypher
MATCH (n) DETACH DELETE n

CALL gds.graph.drop('projection') YIELD graphName;
```

## Jupyter Lab

```bash
source .venv/bin/activate
```