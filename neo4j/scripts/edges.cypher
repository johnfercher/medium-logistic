MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "manaus" CREATE (a)-[:road {distance_km:1395}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "porto_velho" CREATE (a)-[:road {distance_km:510}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "boa_vista" CREATE (a)-[:road {distance_km:748}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "macapa" CREATE (a)-[:road {distance_km:2993}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "belem" CREATE (a)-[:road {distance_km:2994}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "cuiaba" CREATE (a)-[:road {distance_km:2349}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "belem" CREATE (a)-[:road {distance_km:527}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "sao_luis" CREATE (a)-[:road {distance_km:582}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "fortaleza" CREATE (a)-[:road {distance_km:904}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "teresina" CREATE (a)-[:road {distance_km:436}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "maceio" CREATE (a)-[:road {distance_km:1626}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "natal" CREATE (a)-[:road {distance_km:522}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "teresina" CREATE (a)-[:road {distance_km:604}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "joao_pessoa" CREATE (a)-[:road {distance_km:671}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "joao_pessoa" CREATE (a)-[:road {distance_km:181}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "joao_pessoa" AND b.id = "recife" CREATE (a)-[:road {distance_km:116}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "recife" AND b.id = "maceio" CREATE (a)-[:road {distance_km:257}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "maceio" AND b.id = "aracaju" CREATE (a)-[:road {distance_km:500}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "salvador" CREATE (a)-[:road {distance_km:325}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "sao_paulo" CREATE (a)-[:road {distance_km:2159}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "vitoria" CREATE (a)-[:road {distance_km:1176}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "palmas" CREATE (a)-[:road {distance_km:1438}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "rio_de_janeiro" CREATE (a)-[:road {distance_km:518}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance_km:514}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "sao_paulo" CREATE (a)-[:road {distance_km:444}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance_km:442}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "curitiba" CREATE (a)-[:road {distance_km:402}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance_km:583}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:982}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "florianopolis" CREATE (a)-[:road {distance_km:307}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:977}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "porto_alegre" CREATE (a)-[:road {distance_km:463}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "brasilia" CREATE (a)-[:road {distance_km:208}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance_km:889}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "cuiaba" CREATE (a)-[:road {distance_km:897}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:839}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "palmas" CREATE (a)-[:road {distance_km:845}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "maceio" CREATE (a)-[:road {distance_km:1892}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "aracaju" CREATE (a)-[:road {distance_km:1640}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:707}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:1424}]->(b);

MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "campo_grande" CREATE (a)-[:road {distance_km:1264}]->(b);