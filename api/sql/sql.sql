CREATE DATABASE IF NOT EXISTS TesteGo;
USE TesteGo;

DROP TABLE IF EXISTS publicacoes;
DROP TABLE IF EXISTS seguidores;
DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
    id int auto_increment primary key,
    nome varchar(50) not null,
    nick varchar(50) not null unique,
    email varchar(50) not null unique,
    senha varchar(100) not null,
    criadoEm timestamp default current_timestamp()
) ENGINE=INNODB;

CREATE TABLE seguidores (
    usuario_id int not null,
    seguidor_id int not null,
    FOREIGN KEY {usuario_id} REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY {seguidor_id} REFERENCES usuarios(id) ON DELETE CASCADE,
    PRIMARY KEY(usuario_id, seguidor_id)
) ENGINE=INNODB;

CREATE TABLE publicacoes{
    id int auto_increment primary key,
    titulo varchar(50) not null,
    conteudo varchar(300) not null,
    autor_id int not null,
    curtidas int default 0,
    criadoEm timestamp default current_timestamp(),
    FOREIGN KEY (autor_id) REFERENCES usuarios(id) ON DELETE CASCADE
} ENGINE=INNODB;