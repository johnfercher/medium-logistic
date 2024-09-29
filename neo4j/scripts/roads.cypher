MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "porto_velho" CREATE (a)-[:road {distance:510, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "porto_velho" CREATE (a)<-[:road {distance:510, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "tarauaca" CREATE (a)-[:road {distance:409, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_branco" AND b.id = "tarauaca" CREATE (a)<-[:road {distance:409, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "tarauaca" AND b.id = "cruzeiro_do_sul" CREATE (a)-[:road {distance:228, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "tarauaca" AND b.id = "cruzeiro_do_sul" CREATE (a)<-[:road {distance:228, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "rorainopolis" CREATE (a)-[:road {distance:488, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "rorainopolis" CREATE (a)<-[:road {distance:488, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rorainopolis" AND b.id = "boa_vista" CREATE (a)-[:road {distance:260, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rorainopolis" AND b.id = "boa_vista" CREATE (a)<-[:road {distance:260, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "guiana" AND b.id = "boa_vista" CREATE (a)-[:road {distance:679, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "guiana" AND b.id = "boa_vista" CREATE (a)<-[:road {distance:679, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "guiana" AND b.id = "suriname" CREATE (a)-[:road {distance:444, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "guiana" AND b.id = "suriname" CREATE (a)<-[:road {distance:444, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "suriname" AND b.id = "guiana_francesa" CREATE (a)-[:road {distance:397, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "suriname" AND b.id = "guiana_francesa" CREATE (a)<-[:road {distance:397, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "guiana_francesa" AND b.id = "oiapoque" CREATE (a)-[:road {distance:194, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "guiana_francesa" AND b.id = "oiapoque" CREATE (a)<-[:road {distance:194, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "porto_velho" CREATE (a)-[:road {distance:889, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "manaus" AND b.id = "porto_velho" CREATE (a)<-[:road {distance:889, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "oiapoque" CREATE (a)-[:road {distance:578, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "macapa" AND b.id = "oiapoque" CREATE (a)<-[:road {distance:578, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "sao_luis" CREATE (a)-[:road {distance:582, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "sao_luis" CREATE (a)<-[:road {distance:582, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "imperatriz" CREATE (a)-[:road {distance:580, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "imperatriz" CREATE (a)<-[:road {distance:580, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "imperatriz" AND b.id = "parauapebas" CREATE (a)-[:road {distance:387, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "imperatriz" AND b.id = "parauapebas" CREATE (a)<-[:road {distance:387, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "parauapebas" CREATE (a)-[:road {distance:653, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "parauapebas" CREATE (a)<-[:road {distance:653, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "santarem" CREATE (a)-[:road {distance:1167, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belem" AND b.id = "santarem" CREATE (a)<-[:road {distance:1167, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "parauapebas" AND b.id = "santarem" CREATE (a)-[:road {distance:1073, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "parauapebas" AND b.id = "santarem" CREATE (a)<-[:road {distance:1073, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "parnaiba" CREATE (a)-[:road {distance:658, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "parnaiba" CREATE (a)<-[:road {distance:658, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "teresina" CREATE (a)-[:road {distance:436, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "teresina" CREATE (a)<-[:road {distance:436, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "imperatriz" CREATE (a)-[:road {distance:632, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_luis" AND b.id = "imperatriz" CREATE (a)<-[:road {distance:632, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "mossoro" CREATE (a)-[:road {distance:241, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "mossoro" CREATE (a)<-[:road {distance:241, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "teresina" CREATE (a)-[:road {distance:604, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "teresina" CREATE (a)<-[:road {distance:604, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "sobral" CREATE (a)-[:road {distance:243, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "fortaleza" AND b.id = "sobral" CREATE (a)<-[:road {distance:243, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "joao_pessoa" CREATE (a)-[:road {distance:181, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "joao_pessoa" CREATE (a)<-[:road {distance:181, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "mossoro" AND b.id = "teresina" CREATE (a)-[:road {distance:826, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "mossoro" AND b.id = "teresina" CREATE (a)<-[:road {distance:826, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "mossoro" CREATE (a)-[:road {distance:279, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "mossoro" CREATE (a)<-[:road {distance:279, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "caico" CREATE (a)-[:road {distance:272, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "natal" AND b.id = "caico" CREATE (a)<-[:road {distance:272, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "caico" AND b.id = "mossoro" CREATE (a)-[:road {distance:189, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "caico" AND b.id = "mossoro" CREATE (a)<-[:road {distance:189, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "joao_pessoa" AND b.id = "recife" CREATE (a)-[:road {distance:116, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "joao_pessoa" AND b.id = "recife" CREATE (a)<-[:road {distance:116, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "caico" AND b.id = "teresina" CREATE (a)-[:road {distance:827, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "caico" AND b.id = "teresina" CREATE (a)<-[:road {distance:827, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "joao_pessoa" AND b.id = "caico" CREATE (a)-[:road {distance:321, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "joao_pessoa" AND b.id = "caico" CREATE (a)<-[:road {distance:321, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "recife" AND b.id = "maceio" CREATE (a)-[:road {distance:257, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "recife" AND b.id = "maceio" CREATE (a)<-[:road {distance:257, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "juazeiro_do_norte" CREATE (a)-[:road {distance:1128, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "juazeiro_do_norte" CREATE (a)<-[:road {distance:1128, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "imperatriz" CREATE (a)-[:road {distance:614, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "imperatriz" CREATE (a)<-[:road {distance:614, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "petrolina" CREATE (a)-[:road {distance:709, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "petrolina" CREATE (a)<-[:road {distance:709, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "maceio" AND b.id = "aracaju" CREATE (a)-[:road {distance:500, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "maceio" AND b.id = "aracaju" CREATE (a)<-[:road {distance:500, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "maceio" AND b.id = "juazeiro_do_norte" CREATE (a)-[:road {distance:606, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "maceio" AND b.id = "juazeiro_do_norte" CREATE (a)<-[:road {distance:606, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "juazeiro_do_norte" AND b.id = "petrolina" CREATE (a)-[:road {distance:348, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "juazeiro_do_norte" AND b.id = "petrolina" CREATE (a)<-[:road {distance:348, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "juazeiro_do_norte" AND b.id = "caico" CREATE (a)-[:road {distance:323, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "juazeiro_do_norte" AND b.id = "caico" CREATE (a)<-[:road {distance:323, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "salvador" CREATE (a)-[:road {distance:325, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "salvador" CREATE (a)<-[:road {distance:325, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "petrolina" CREATE (a)-[:road {distance:478, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aracaju" AND b.id = "petrolina" CREATE (a)<-[:road {distance:478, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "itamaraju" CREATE (a)-[:road {distance:740, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "itamaraju" CREATE (a)<-[:road {distance:740, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "montes_claros" AND b.id = "itamaraju" CREATE (a)-[:road {distance:847, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "montes_claros" AND b.id = "itamaraju" CREATE (a)<-[:road {distance:847, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "palmas" CREATE (a)-[:road {distance:820, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "palmas" CREATE (a)<-[:road {distance:820, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "montes_claros" CREATE (a)-[:road {distance:651, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ibotirama" AND b.id = "montes_claros" CREATE (a)<-[:road {distance:651, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "ibotirama" CREATE (a)-[:road {distance:655, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "ibotirama" CREATE (a)<-[:road {distance:655, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "montes_claros" CREATE (a)-[:road {distance:1009, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "salvador" AND b.id = "montes_claros" CREATE (a)<-[:road {distance:1009, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance:514, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "belo_horizonte" CREATE (a)<-[:road {distance:514, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "itamaraju" CREATE (a)-[:road {distance:436, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "itamaraju" CREATE (a)<-[:road {distance:436, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "sao_paulo" CREATE (a)-[:road {distance:444, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "sao_paulo" CREATE (a)<-[:road {distance:444, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance:441, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "belo_horizonte" CREATE (a)<-[:road {distance:441, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "campos_dos_goytacazes" CREATE (a)-[:road {distance:278, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_de_janeiro" AND b.id = "campos_dos_goytacazes" CREATE (a)<-[:road {distance:278, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "campos_dos_goytacazes" CREATE (a)-[:road {distance:241, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "vitoria" AND b.id = "campos_dos_goytacazes" CREATE (a)<-[:road {distance:241, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "curitiba" CREATE (a)-[:road {distance:402, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "curitiba" CREATE (a)<-[:road {distance:402, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance:583, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "belo_horizonte" CREATE (a)<-[:road {distance:583, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "londrina" CREATE (a)-[:road {distance:537, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "londrina" CREATE (a)<-[:road {distance:537, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "ribeirao_preto" CREATE (a)-[:road {distance:314, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sao_paulo" AND b.id = "ribeirao_preto" CREATE (a)<-[:road {distance:314, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "uberlandia" CREATE (a)-[:road {distance:280, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "uberlandia" CREATE (a)<-[:road {distance:280, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "londrina" CREATE (a)-[:road {distance:466, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "londrina" CREATE (a)<-[:road {distance:466, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "belo_horizonte" CREATE (a)-[:road {distance:512, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ribeirao_preto" AND b.id = "belo_horizonte" CREATE (a)<-[:road {distance:512, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "londrina" AND b.id = "campo_grande" CREATE (a)-[:road {distance:589, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "londrina" AND b.id = "campo_grande" CREATE (a)<-[:road {distance:589, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "londrina" CREATE (a)-[:road {distance:388, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "londrina" CREATE (a)<-[:road {distance:388, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "florianopolis" CREATE (a)-[:road {distance:307, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "florianopolis" CREATE (a)<-[:road {distance:307, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "cascavel" CREATE (a)-[:road {distance:504, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "curitiba" AND b.id = "cascavel" CREATE (a)<-[:road {distance:504, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cascavel" AND b.id = "londrina" CREATE (a)-[:road {distance:380, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cascavel" AND b.id = "londrina" CREATE (a)<-[:road {distance:380, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "londrina" CREATE (a)-[:road {distance:746, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "londrina" CREATE (a)<-[:road {distance:746, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "rio_verde" CREATE (a)-[:road {distance:336, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "rio_verde" CREATE (a)<-[:road {distance:336, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cascavel" AND b.id = "dourados" CREATE (a)-[:road {distance:411, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cascavel" AND b.id = "dourados" CREATE (a)<-[:road {distance:411, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "porto_alegre" CREATE (a)-[:road {distance:463, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "porto_alegre" CREATE (a)<-[:road {distance:463, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "chapeco" CREATE (a)-[:road {distance:562, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "florianopolis" AND b.id = "chapeco" CREATE (a)<-[:road {distance:562, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "chapeco" AND b.id = "cascavel" CREATE (a)-[:road {distance:337, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "chapeco" AND b.id = "cascavel" CREATE (a)<-[:road {distance:337, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "brasilia" CREATE (a)-[:road {distance:208, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "brasilia" CREATE (a)<-[:road {distance:208, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "uberlandia" CREATE (a)-[:road {distance:340, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "uberlandia" CREATE (a)<-[:road {distance:340, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "rio_verde" CREATE (a)-[:road {distance:232, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "goiania" AND b.id = "rio_verde" CREATE (a)<-[:road {distance:232, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "rio_verde" AND b.id = "cuiaba" CREATE (a)-[:road {distance:701, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "rio_verde" AND b.id = "cuiaba" CREATE (a)<-[:road {distance:701, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "palmas" CREATE (a)-[:road {distance:845, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "palmas" CREATE (a)<-[:road {distance:845, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "montes_claros" CREATE (a)-[:road {distance:700, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "montes_claros" CREATE (a)<-[:road {distance:700, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "ibotirama" CREATE (a)-[:road {distance:803, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "brasilia" AND b.id = "ibotirama" CREATE (a)<-[:road {distance:803, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "campo_grande" CREATE (a)-[:road {distance:707, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "campo_grande" CREATE (a)<-[:road {distance:707, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "palmas" CREATE (a)-[:road {distance:764, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "palmas" CREATE (a)<-[:road {distance:764, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "goiania" CREATE (a)-[:road {distance:314, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "goiania" CREATE (a)<-[:road {distance:314, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "sinop" CREATE (a)-[:road {distance:998, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "aruana" AND b.id = "sinop" CREATE (a)<-[:road {distance:998, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "aruana" CREATE (a)-[:road {distance:780, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "aruana" CREATE (a)<-[:road {distance:780, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "rondonopolis" CREATE (a)-[:road {distance:219, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "rondonopolis" CREATE (a)<-[:road {distance:216, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "sinop" CREATE (a)-[:road {distance:480, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "sinop" CREATE (a)<-[:road {distance:480, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "vilhena" CREATE (a)-[:road {distance:754, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "cuiaba" AND b.id = "vilhena" CREATE (a)<-[:road {distance:754, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "chapeco" CREATE (a)-[:road {distance:454, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "chapeco" CREATE (a)<-[:road {distance:454, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "pelotas" CREATE (a)-[:road {distance:263, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "pelotas" CREATE (a)<-[:road {distance:263, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "santa_maria" CREATE (a)-[:road {distance:290, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "porto_alegre" AND b.id = "santa_maria" CREATE (a)<-[:road {distance:290, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "santa_maria" AND b.id = "pelotas" CREATE (a)-[:road {distance:294, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "santa_maria" AND b.id = "pelotas" CREATE (a)<-[:road {distance:294, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "santa_maria" AND b.id = "chapeco" CREATE (a)-[:road {distance:401, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "santa_maria" AND b.id = "chapeco" CREATE (a)<-[:road {distance:401, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "montes_claros" CREATE (a)-[:road {distance:425, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "montes_claros" CREATE (a)<-[:road {distance:425, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "brasilia" CREATE (a)-[:road {distance:733, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "brasilia" CREATE (a)<-[:road {distance:733, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "uberlandia" CREATE (a)-[:road {distance:537, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "belo_horizonte" AND b.id = "uberlandia" CREATE (a)<-[:road {distance:537, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "campo_grande" CREATE (a)-[:road {distance:760, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "uberlandia" AND b.id = "campo_grande" CREATE (a)<-[:road {distance:760, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "petrolina" CREATE (a)-[:road {distance:641, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "petrolina" CREATE (a)<-[:road {distance:641, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "parnaiba" CREATE (a)-[:road {distance:338, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "teresina" AND b.id = "parnaiba" CREATE (a)<-[:road {distance:338, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ji_parana" AND b.id = "sinop" CREATE (a)-[:road {distance:996, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ji_parana" AND b.id = "sinop" CREATE (a)<-[:road {distance:996, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "sinop" CREATE (a)-[:road {distance:998, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "sinop" CREATE (a)<-[:road {distance:998, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "parauapebas" CREATE (a)-[:road {distance:1156, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "parauapebas" CREATE (a)<-[:road {distance:1156, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "santarem" AND b.id = "itaituba" CREATE (a)-[:road {distance:368, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "santarem" AND b.id = "itaituba" CREATE (a)<-[:road {distance:368, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "confresa" AND b.id = "palmas" CREATE (a)-[:road {distance:583, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "confresa" AND b.id = "palmas" CREATE (a)<-[:road {distance:583, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "confresa" AND b.id = "parauapebas" CREATE (a)-[:road {distance:731, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "confresa" AND b.id = "parauapebas" CREATE (a)<-[:road {distance:731, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sinop" AND b.id = "confresa" CREATE (a)-[:road {distance:636, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sinop" AND b.id = "confresa" CREATE (a)<-[:road {distance:636, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_velho" AND b.id = "ji_parana" CREATE (a)-[:road {distance:372, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "porto_velho" AND b.id = "ji_parana" CREATE (a)<-[:road {distance:372, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "porto_velho" AND b.id = "manaus" CREATE (a)-[:road {distance:889, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "porto_velho" AND b.id = "manaus" CREATE (a)<-[:road {distance:889, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "porto_velho" CREATE (a)-[:road {distance:1252, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "itaituba" AND b.id = "porto_velho" CREATE (a)<-[:road {distance:1252, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "ji_parana" AND b.id = "vilhena" CREATE (a)-[:road {distance:334, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "ji_parana" AND b.id = "vilhena" CREATE (a)<-[:road {distance:334, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "campo_grande" AND b.id = "dourados" CREATE (a)-[:road {distance:225, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "campo_grande" AND b.id = "dourados" CREATE (a)<-[:road {distance:225, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "campo_grande" AND b.id = "rio_verde" CREATE (a)-[:road {distance:611, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "campo_grande" AND b.id = "rio_verde" CREATE (a)<-[:road {distance:611, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "boa_vista" AND b.id = "pacaraima" CREATE (a)-[:road {distance:214, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "boa_vista" AND b.id = "pacaraima" CREATE (a)<-[:road {distance:214, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "palmas" AND b.id = "imperatriz" CREATE (a)-[:road {distance:628, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "palmas" AND b.id = "imperatriz" CREATE (a)<-[:road {distance:628, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "palmas" AND b.id = "parauapebas" CREATE (a)-[:road {distance:704, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "palmas" AND b.id = "parauapebas" CREATE (a)<-[:road {distance:704, speed:100, delay:1, price_rate:0.3}]-(b);

MATCH (a:City), (b:City) WHERE a.id = "sobral" AND b.id = "parnaiba" CREATE (a)-[:road {distance:244, speed:100, delay:1, price_rate:0.3}]->(b);
MATCH (a:City), (b:City) WHERE a.id = "sobral" AND b.id = "parnaiba" CREATE (a)<-[:road {distance:244, speed:100, delay:1, price_rate:0.3}]-(b);