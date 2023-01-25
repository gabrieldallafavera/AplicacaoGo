INSERT INTO usuarios(nome, nick, email, senha) VALUES
("Usuario 1", "usuario_1", "usuario1@gmail.com", "Hash da senha"),
("Usuario 2", "usuario_2", "usuario2@gmail.com", "Hash da senha"),
("Usuario 3", "usuario_3", "usuario3@gmail.com", "Hash da senha");

INSERT INTO seguidores(usuario_id, seguidor_id) VALUES
(1, 2),
(2, 1),
(3, 1),
(1, 3),
(2, 1);

INSERT INTO publicacoes(titulo, conteudo, autor_id) VALUES
("Publicação 1", "Conteudo publicação 1", 1),
("Publicação 2", "Conteudo publicação 2", 2),
("Publicação 3", "Conteudo publicação 3", 3);