MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "belem" CREATE (a)-[:air {distance:207, speed:860, delay:2, price_rate:4.77}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "belem" CREATE (a)<-[:air {distance:207, speed:860, delay:2, price_rate:4.77}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "brasilia" CREATE (a)-[:air {distance:875, speed:860, delay:2, price_rate:2.81}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "brasilia" CREATE (a)<-[:air {distance:875, speed:860, delay:2, price_rate:2.81}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "florianopolis" CREATE (a)-[:air {distance:495, speed:860, delay:2, price_rate:6.25}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "florianopolis" CREATE (a)<-[:air {distance:495, speed:860, delay:2, price_rate:6.25}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "belo_horizonte" CREATE (a)-[:air {distance:517, speed:860, delay:2, price_rate:2.95}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "belo_horizonte" CREATE (a)<-[:air {distance:517, speed:860, delay:2, price_rate:2.95}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "rio_de_janeiro" CREATE (a)-[:air {distance:360, speed:860, delay:2, price_rate:7.54}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "rio_de_janeiro" CREATE (a)<-[:air {distance:360, speed:860, delay:2, price_rate:7.54}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "belem" CREATE (a)-[:air {distance:1606, speed:860, delay:2, price_rate:1.27}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "belem" CREATE (a)<-[:air {distance:1606, speed:860, delay:2, price_rate:1.27}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "cuiaba" CREATE (a)-[:air {distance:877, speed:860, delay:2, price_rate:2.15}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "cuiaba" CREATE (a)<-[:air {distance:877, speed:860, delay:2, price_rate:2.15}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "porto_velho" CREATE (a)-[:air {distance:1904, speed:860, delay:2, price_rate:0.73}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "porto_velho" CREATE (a)<-[:air {distance:1904, speed:860, delay:2, price_rate:0.73}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "rio_branco" CREATE (a)-[:air {distance:2249, speed:860, delay:2, price_rate:1.34}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "rio_branco" CREATE (a)<-[:air {distance:2249, speed:860, delay:2, price_rate:1.34}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "fortaleza" CREATE (a)-[:air {distance:2371, speed:860, delay:2, price_rate:0.57}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "fortaleza" CREATE (a)<-[:air {distance:2371, speed:860, delay:2, price_rate:0.57}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "campo_grande" CREATE (a)-[:air {distance:891, speed:860, delay:2, price_rate:2.41}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "campo_grande" CREATE (a)<-[:air {distance:891, speed:860, delay:2, price_rate:2.41}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "belo_horizonte" CREATE (a)-[:air {distance:373, speed:860, delay:2, price_rate:4.98}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "belo_horizonte" CREATE (a)<-[:air {distance:373, speed:860, delay:2, price_rate:4.98}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "porto_alegre" CREATE (a)-[:air {distance:375, speed:860, delay:2, price_rate:4.98}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "porto_alegre" CREATE (a)<-[:air {distance:375, speed:860, delay:2, price_rate:4.98}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "salvador" CREATE (a)-[:air {distance:1084, speed:860, delay:2, price_rate:2.10}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "salvador" CREATE (a)<-[:air {distance:1084, speed:860, delay:2, price_rate:2.10}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "fortaleza" CREATE (a)-[:air {distance:1686, speed:860, delay:2, price_rate:1.96}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "fortaleza" CREATE (a)<-[:air {distance:1686, speed:860, delay:2, price_rate:1.96}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "manaus" CREATE (a)-[:air {distance:1942, speed:860, delay:2, price_rate:1.46}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "manaus" CREATE (a)<-[:air {distance:1942, speed:860, delay:2, price_rate:1.46}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "recife" CREATE (a)-[:air {distance:670, speed:860, delay:2, price_rate:2.01}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "recife" CREATE (a)<-[:air {distance:670, speed:860, delay:2, price_rate:2.01}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "recife" AND b.id = "fortaleza" CREATE (a)-[:air {distance:626, speed:860, delay:2, price_rate:4.96}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "recife" AND b.id = "fortaleza" CREATE (a)<-[:air {distance:626, speed:860, delay:2, price_rate:4.96}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "sao_luis" CREATE (a)-[:air {distance:652, speed:860, delay:2, price_rate:3.56}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "sao_luis" CREATE (a)<-[:air {distance:652, speed:860, delay:2, price_rate:3.56}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "belem" CREATE (a)-[:air {distance:481, speed:860, delay:2, price_rate:2.25}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "belem" CREATE (a)<-[:air {distance:481, speed:860, delay:2, price_rate:2.25}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "manaus" CREATE (a)-[:air {distance:1289, speed:860, delay:2, price_rate:2.04}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "manaus" CREATE (a)<-[:air {distance:1289, speed:860, delay:2, price_rate:2.04}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "porto_velho" CREATE (a)-[:air {distance:768, speed:860, delay:2, price_rate:5.92}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "porto_velho" CREATE (a)<-[:air {distance:768, speed:860, delay:2, price_rate:5.92}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "vitoria" CREATE (a)-[:air {distance:380, speed:860, delay:2, price_rate:5.75}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "vitoria" CREATE (a)<-[:air {distance:380, speed:860, delay:2, price_rate:5.75}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "fernando_de_noronha" CREATE (a)-[:air {distance:374, speed:860, delay:2, price_rate:11.22}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "fernando_de_noronha" CREATE (a)<-[:air {distance:374, speed:860, delay:2, price_rate:11.22}]-(b);