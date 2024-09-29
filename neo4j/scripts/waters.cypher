MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "belem" CREATE (a)-[:water {distance:339, speed:12, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "belem" CREATE (a)<-[:water {distance:339, speed:12, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "coari" CREATE (a)-[:water {distance:370, speed:52, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "coari" CREATE (a)<-[:water {distance:370, speed:52, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "santarem" CREATE (a)-[:water {distance:740, speed:24, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "santarem" CREATE (a)<-[:water {distance:740, speed:24, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "coari" AND b.id = "tefe" CREATE (a)-[:water {distance:212, speed:70, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "coari" AND b.id = "tefe" CREATE (a)<-[:water {distance:212, speed:70, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "tefe" AND b.id = "tabatinga" CREATE (a)-[:water {distance:942, speed:27, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "tefe" AND b.id = "tabatinga" CREATE (a)<-[:water {distance:942, speed:27, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "santarem" CREATE (a)-[:water {distance:273, speed:39, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "santarem" CREATE (a)<-[:water {distance:273, speed:39, delay:1, price_rate:0.7}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "fernando_de_noronha" CREATE (a)-[:water {distance:374, speed:12, delay:1, price_rate:0.7}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "fernando_de_noronha" CREATE (a)<-[:water {distance:374, speed:12, delay:1, price_rate:0.7}]-(b);