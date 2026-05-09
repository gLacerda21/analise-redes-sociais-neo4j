# Análise de Redes Sociais com Neo4j

## Descrição

Este projeto foi desenvolvido utilizando Neo4j com o objetivo de simular uma rede social por meio de bancos de dados orientados a grafos.

A aplicação representa usuários, amizades, seguidores, posts e comunidades, permitindo realizar consultas complexas sobre conexões sociais, interações entre usuários e engajamento dentro da plataforma.

## Objetivo

Demonstrar como bancos de dados em grafos podem ser utilizados para modelar redes sociais e analisar relacionamentos entre usuários de forma eficiente utilizando a linguagem Cypher.

## Estrutura do Grafo

### Nós

- Usuario
- Post
- Comunidade

### Relacionamentos

- AMIGO_DE
- SEGUE
- PUBLICOU
- CURTIU
- PARTICIPA_DE

## Funcionalidades

- Criação de usuários e conexões sociais
- Relacionamentos de amizade e seguidores
- Publicação e curtida de posts
- Participação em comunidades
- Consultas de relacionamento entre usuários
- Análise de conexões e interações sociais

## Tecnologias Utilizadas

- Neo4j Aura
- Cypher
- GitHub

## Exemplo de Consulta

```cypher
MATCH (u:Usuario)-[:CURTIU]->(p:Post)
RETURN u.nome, p.titulo;
