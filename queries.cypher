CREATE (:Usuario {nome:'Gabriel'});
CREATE (:Usuario {nome:'Ana'});
CREATE (:Usuario {nome:'Carlos'});
CREATE (:Usuario {nome:'Julia'});
CREATE (:Usuario {nome:'Pedro'});
CREATE (:Usuario {nome:'Marina'});

CREATE (:Post {titulo:'Foto na praia'});
CREATE (:Post {titulo:'Dica de tecnologia'});
CREATE (:Post {titulo:'Treino do dia'});

CREATE (:Comunidade {nome:'Tecnologia'});
CREATE (:Comunidade {nome:'Esportes'});
CREATE (:Comunidade {nome:'Viagens'});

MATCH (g:Usuario {nome:'Gabriel'}), (a:Usuario {nome:'Ana'})
CREATE (g)-[:AMIGO_DE]->(a);

MATCH (a:Usuario {nome:'Ana'}), (c:Usuario {nome:'Carlos'})
CREATE (a)-[:AMIGO_DE]->(c);

MATCH (c:Usuario {nome:'Carlos'}), (j:Usuario {nome:'Julia'})
CREATE (c)-[:AMIGO_DE]->(j);

MATCH (j:Usuario {nome:'Julia'}), (p:Usuario {nome:'Pedro'})
CREATE (j)-[:AMIGO_DE]->(p);

MATCH (g:Usuario {nome:'Gabriel'}), (p:Usuario {nome:'Pedro'})
CREATE (g)-[:SEGUE]->(p);

MATCH (g:Usuario {nome:'Gabriel'}), (m:Usuario {nome:'Marina'})
CREATE (g)-[:SEGUE]->(m);

MATCH (g:Usuario {nome:'Gabriel'}), (post:Post {titulo:'Dica de tecnologia'})
CREATE (g)-[:PUBLICOU]->(post);

MATCH (a:Usuario {nome:'Ana'}), (post:Post {titulo:'Foto na praia'})
CREATE (a)-[:PUBLICOU]->(post);

MATCH (p:Usuario {nome:'Pedro'}), (post:Post {titulo:'Treino do dia'})
CREATE (p)-[:PUBLICOU]->(post);

MATCH (a:Usuario {nome:'Ana'}), (post:Post {titulo:'Dica de tecnologia'})
CREATE (a)-[:CURTIU]->(post);

MATCH (c:Usuario {nome:'Carlos'}), (post:Post {titulo:'Dica de tecnologia'})
CREATE (c)-[:CURTIU]->(post);

MATCH (m:Usuario {nome:'Marina'}), (post:Post {titulo:'Dica de tecnologia'})
CREATE (m)-[:CURTIU]->(post);

MATCH (g:Usuario {nome:'Gabriel'}), (com:Comunidade {nome:'Tecnologia'})
CREATE (g)-[:PARTICIPA_DE]->(com);

MATCH (a:Usuario {nome:'Ana'}), (com:Comunidade {nome:'Viagens'})
CREATE (a)-[:PARTICIPA_DE]->(com);

MATCH (p:Usuario {nome:'Pedro'}), (com:Comunidade {nome:'Esportes'})
CREATE (p)-[:PARTICIPA_DE]->(com);
