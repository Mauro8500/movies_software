-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-05-30 02:13:43.319

-- tables
-- Table: Administrador
CREATE TABLE Administrador (
    idAdm serial  NOT NULL,
    nombre varchar(50)  NOT NULL,
    Usuario varchar(50)  NOT NULL,
    password varchar(50)  NOT NULL,
    CONSTRAINT Administrador_pk PRIMARY KEY (idAdm)
);

INSERT INTO administrador
(idadm, nombre, usuario, "password")
VALUES(1, 'Mauricio', 'mauro', '123456');;

-- Table: Clientes
CREATE TABLE Clientes (
    idCli serial  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Apellido varchar(50)  NOT NULL,
    Usuario varchar(50)  NOT NULL,
    password varchar(50)  NOT NULL,
    CONSTRAINT Clientes_pk PRIMARY KEY (idCli)
);

INSERT INTO clientes
(idcli, nombre, apellido, usuario, "password")
VALUES(1, 'Maria', 'Latte', 'mari_net', '123456');

INSERT INTO clientes
(idcli, nombre, apellido, usuario, "password")
VALUES(2, 'Gustavo', 'Pozo', 'gus_gus', '125456');

INSERT INTO clientes
(idcli, nombre, apellido, usuario, "password")
VALUES(3, 'Hugo', 'Perez', 'hugo_123', '147258');

INSERT INTO clientes
(idcli, nombre, apellido, usuario, "password")
VALUES(4, 'Kate', 'Paz', 'kate', '258369');;

-- Table: Peliculas
CREATE TABLE Peliculas (
    idPeli serial  NOT NULL,
    nombre varchar(50)  NOT NULL,
    descripcion varchar(2000)  NOT NULL,
    precio decimal(10,2)  NOT NULL,
    disponibilidad int  NOT NULL,
    status int  NULL,
    CONSTRAINT Peliculas_pk PRIMARY KEY (idPeli)
);

INSERT INTO peliculas
(idpeli, nombre, descripcion, precio, disponibilidad,status)
VALUES(1, 'John Wick', 'ueva York, John Wick, un asesino a sueldo retirado, vuelve otra vez a la acción para vengarse de los gangsters que le quitaron todo.', 25.5, 5,1);

INSERT INTO peliculas
(idpeli, nombre, descripcion, precio, disponibilidad,status)
VALUES(2, 'Creed', 'Adonis Johnson nunca conocio a su padre famoso, el campeon mundial de ṕeso pesado Apollo Creed, quien murio antes de que el naciera.', 25.5, 5,0);

INSERT INTO peliculas
(idpeli, nombre, descripcion, precio, disponibilidad,status)
VALUES(3, 'IT', 'Cuando los niños de la ciudad comienzan a desaparecer, un grupo de niños pequeños se enfrenta a sus mayores miedos cuando se enfrentan al malvado payaso Pennywise. Basado en la novela de Stephen King.', 15.8, 8,1);

INSERT INTO peliculas
(idpeli, nombre, descripcion, precio, disponibilidad,status)
VALUES(4, 'MOONFALL', 'Una fuerza misteriosa saca a la luna de su órbita alrededor de la Tierra y la lanza en un curso de colisión con la vida tal como la conocemos.', 30,0,1);;

-- Table: Reservas
CREATE TABLE Reservas (
    idReserva serial  NOT NULL,
    num_reservas int  NOT NULL,
    metodotarjeta int  NOT NULL,
    metodoefectivo varchar(50)  NOT NULL,
    Peliculas_idPeli int  NOT NULL,
    Clientes_idCli int  NOT NULL,
    pickups_idPickups int  NOT NULL,
    CONSTRAINT Reservas_pk PRIMARY KEY (idReserva)
);

INSERT INTO reservas
(idreserva, num_reservas, metodotarjeta, metodoefectivo, peliculas_idpeli,clientes_idCli,pickups_idPickups)
VALUES(1, 1, 1, 'no', 1, 1,1);

INSERT INTO reservas
(idreserva, num_reservas, metodotarjeta, metodoefectivo, peliculas_idpeli,clientes_idCli,pickups_idPickups)
VALUES(2, 1, 1, 'no', 3, 1,1);

INSERT INTO reservas
(idreserva, num_reservas, metodotarjeta, metodoefectivo, peliculas_idpeli,clientes_idCli,pickups_idPickups)
VALUES(3, 1, 1, 'no', 4, 2, 1);

INSERT INTO reservas
(idreserva, num_reservas, metodotarjeta, metodoefectivo, peliculas_idpeli,clientes_idCli,pickups_idPickups)
VALUES(4, 1, 1, 'no', 3, 3, 1);

INSERT INTO reservas
(idreserva, num_reservas, metodotarjeta, metodoefectivo, peliculas_idpeli,clientes_idCli,pickups_idPickups)
VALUES(5, 1, 1, 'no', 1, 4, 1);;

-- Table: actor
CREATE TABLE actor (
    id_act serial  NOT NULL,
    nombre varchar(50)  NOT NULL,
    apellido varchar(50)  NOT NULL,
    CONSTRAINT actor_pk PRIMARY KEY (id_act)
);

INSERT INTO actor
(id_act, nombre, apellido)
VALUES(1, 'Keanu', 'Reeves');

INSERT INTO actor
(id_act, nombre, apellido)
VALUES(2, 'Sylvester', 'Stallone');

INSERT INTO actor
(id_act, nombre, apellido)
VALUES(3, 'Jaeden', 'Lieberher');

INSERT INTO actor
(id_act, nombre, apellido)
VALUES(4, 'Patrick', 'Wilson');;

-- Table: categoria
CREATE TABLE categoria (
    id_categoria serial  NOT NULL,
    nombrecate varchar(50)  NOT NULL,
    CONSTRAINT categoria_pk PRIMARY KEY (id_categoria)
);

INSERT INTO categoria
(id_categoria, nombrecate)
VALUES(1, 'Terror');

INSERT INTO categoria
(id_categoria, nombrecate)
VALUES(2, 'Suspenso');

INSERT INTO categoria
(id_categoria, nombrecate)
VALUES(3, 'Deporte');

INSERT INTO categoria
(id_categoria, nombrecate)
VALUES(4, 'Drama');

INSERT INTO categoria
(id_categoria, nombrecate)
VALUES(5, 'Aventura');;

-- Table: pelicula_actor
CREATE TABLE pelicula_actor (
    id_peac serial  NOT NULL,
    Peliculas_idPeli int  NOT NULL,
    actor_id_act int  NOT NULL,
    CONSTRAINT pelicula_actor_pk PRIMARY KEY (id_peac)
);

INSERT INTO pelicula_actor
(id_peac, peliculas_idpeli, actor_id_act)
VALUES(1, 1, 1);

INSERT INTO pelicula_actor
(id_peac, peliculas_idpeli, actor_id_act)
VALUES(2, 2, 2);

INSERT INTO pelicula_actor
(id_peac, peliculas_idpeli, actor_id_act)
VALUES(3, 3, 3);

INSERT INTO pelicula_actor
(id_peac, peliculas_idpeli, actor_id_act)
VALUES(4, 4, 4);;

-- Table: pelicula_categoria
CREATE TABLE pelicula_categoria (
    id_peca serial  NOT NULL,
    Peliculas_idPeli int  NOT NULL,
    categoria_id_categoria int  NOT NULL,
    CONSTRAINT pelicula_categoria_pk PRIMARY KEY (id_peca)
);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(1, 1, 2);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(2, 1, 5);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(3, 2, 3);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(4, 2, 4);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(5, 3, 1);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(6, 3, 2);

INSERT INTO pelicula_categoria
(id_peca, peliculas_idpeli, categoria_id_categoria)
VALUES(7, 4, 5);;

-- Table: pickups
CREATE TABLE pickups (
    idPickups serial  NOT NULL,
    detalle varchar(500)  NOT NULL,
    CONSTRAINT pickups_pk PRIMARY KEY (idPickups)
);

insert into pickups (idpickups, detalle)
values (1, 'Tienes entregas esta semana');;

-- foreign keys
-- Reference: Reservas_Clientes (table: Reservas)
ALTER TABLE Reservas ADD CONSTRAINT Reservas_Clientes
    FOREIGN KEY (Clientes_idCli)
    REFERENCES Clientes (idCli)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservas_Peliculas (table: Reservas)
ALTER TABLE Reservas ADD CONSTRAINT Reservas_Peliculas
    FOREIGN KEY (Peliculas_idPeli)
    REFERENCES Peliculas (idPeli)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservas_pickups (table: Reservas)
ALTER TABLE Reservas ADD CONSTRAINT Reservas_pickups
    FOREIGN KEY (pickups_idPickups)
    REFERENCES pickups (idPickups)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pelicula_actor_Peliculas (table: pelicula_actor)
ALTER TABLE pelicula_actor ADD CONSTRAINT pelicula_actor_Peliculas
    FOREIGN KEY (Peliculas_idPeli)
    REFERENCES Peliculas (idPeli)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pelicula_actor_actor (table: pelicula_actor)
ALTER TABLE pelicula_actor ADD CONSTRAINT pelicula_actor_actor
    FOREIGN KEY (actor_id_act)
    REFERENCES actor (id_act)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pelicula_categoria_Peliculas (table: pelicula_categoria)
ALTER TABLE pelicula_categoria ADD CONSTRAINT pelicula_categoria_Peliculas
    FOREIGN KEY (Peliculas_idPeli)
    REFERENCES Peliculas (idPeli)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pelicula_categoria_categoria (table: pelicula_categoria)
ALTER TABLE pelicula_categoria ADD CONSTRAINT pelicula_categoria_categoria
    FOREIGN KEY (categoria_id_categoria)
    REFERENCES categoria (id_categoria)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

