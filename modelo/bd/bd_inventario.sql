-- crear tbls  --
-- listo
CREATE TABLE schema_inventario.tbl_tipos_musicas (
    id_tipo_musica serial NOT NULL,
    nombre_tipo_musica character varying(20) NOT NULL,
    CONSTRAINT un_nombre_tipo_musica UNIQUE (nombre_tipo_musica),
    CONSTRAINT pk_id_tipo_musica_1 PRIMARY KEY (id_tipo_musica)
);
-- listo
CREATE TABLE schema_inventario.tbl_disqueras_cds (
    id_disquera_cd serial NOT NULL,
    nombre_compania character varying(60) DEFAULT 'Independiente' NOT NULL,
    CONSTRAINT pk_id_disquera_cd PRIMARY KEY (id_disquera_cd)
);

CREATE TABLE schema_inventario.tbl_discos_compactos (
    id_disco_compacto serial NOT NULL,
    titulo_cd character varying(60) NOT NULL,
    id_disquera int NOT NULL,
    en_existencia int NOT NULL,
    CONSTRAINT pk_id_disco_compacto PRIMARY KEY (id_disco_compacto),
    CONSTRAINT fk_id_disquera_cd_1 FOREIGN KEY (id_disquera) REFERENCES schema_inventario.tbl_disqueras_cds,
    CONSTRAINT ck_en_existencia CHECK (en_existencia > 0
        AND en_existencia < 50)
);

CREATE TABLE schema_inventario.tbl_tipos_discos_compactos (
    id_disco_compacto int,
    id_tipo_musica int,
    CONSTRAINT pk_tipo_disco_compacto_1 PRIMARY KEY (id_disco_compacto, id_tipo_musica),
    CONSTRAINT fk_id_disco_compacto_1 FOREIGN KEY (id_disco_compacto) REFERENCES schema_inventario.tbl_discos_compactos,
    CONSTRAINT fk_id_tipo_musica_1 FOREIGN KEY (id_tipo_musica) REFERENCES schema_inventario.tbl_tipos_musicas
);

-- listo
CREATE TABLE schema_inventario.tbl_artistas (
    id_artista serial NOT NULL,
    nombre_artista character varying(60) NOT NULL,
    lugar_nacimiento character varying(60) DEFAULT 'Desconocido' NOT NULL,
    CONSTRAINT pk_id_artista_1 PRIMARY KEY (id_artista)
);

CREATE TABLE schema_inventario.tbl_cds_artistas (
    id_artista int,
    id_disco_compacto int,
    CONSTRAINT pk_cd_artista PRIMARY KEY (id_artista, id_disco_compacto),
    CONSTRAINT fk_id_artista_1 FOREIGN KEY (id_artista) REFERENCES schema_inventario.tbl_artistas,
    CONSTRAINT fk_id_disco_compacto_1 FOREIGN KEY (id_disco_compacto) REFERENCES schema_inventario.tbl_discos_compactos
);

-- Crear vistas --
CREATE VIEW schema_inventario.cds_en_existencia AS
SELECT
    titulo_cd,
    en_existencia
FROM
    schema_inventario.tbl_discos_compactos
WHERE
    en_existencia > 10 WITH CHECK option;

-- Este segunda vista no se puede crear es un herror del libro--
CREATE VIEW schema_inventario.editores_cds (titulo_cd, editor) AS
SELECT
    schema_inventario.tbl_discos_compactos.titulo_cd,
    schema_inventario.tbl_disqueras_cds.nombre_compania
FROM
    schema_inventario.tbl_discos_compactos,
    schema_inventario.tbl_disqueras_cds
WHERE
    schema_inventario.tbl_discos_compactos.id_disquera_cd = schema_inventario.tbl_disqueras_cds.id_disquera_cd
    -- Fin de crear vistas --
    -- Insertar datos en la tabla schema_inventario.tbl_disqueras_cds --
    INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (827, 'Primvate Miusic');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (828, 'Reprise Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (829, 'Asylum Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (830, 'windham Hill Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (831, 'Geffen');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (832, 'MCA Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (833, 'Decca Record Company');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (834, 'CBS Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (835, 'Capitol Records');

INSERT INTO schema_inventario.tbl_disqueras_cds
    VALUES (836, 'Sarabande Records');

-- Insertar datos en la tabla schema_inventario.tbl_discos_compactos --
SELECT
    id_disco_compacto,
    ab.titulo_cd,
    bs.id_disquera_cd,
    bs.nombre_compania,
    ab.en_existencia
FROM
    schema_inventario.tbl_discos_compactos ab
    JOIN schema_inventario.tbl_disqueras_cds bs USING (id_disquera_cd)
ORDER BY
    1 DESC
    SELECT
        *
    FROM
        schema_inventario.tbl_disqueras_cds bs
    ORDER BY
        1 ASC INSERT INTO schema_inventario.tbl_discos_compactos
        VALUES (101, 'Famous Blue Raincoat', 827, 13);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (102, 'Blue', 828, 42);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (103, 'Court and Spark', 829, 22);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (104, 'Past Light', 830, 17);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (105, 'Kojiki', 831, 6);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (106, 'That Christmas Feeling', 832, 8);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (107, 'Patsy Cline: 12 Greatest Hist', 832, 32);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (108, 'Carreras Domingo Pavarotti in Concert', 833, 27);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (109, 'After the Rain: the Soft Sounds of Erik Satie', 833, 21);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (110, 'Out of Africa', 832, 29);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (111, 'Leonard Cohen The Best of', 834, 12);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (112, 'Fundamental', 835, 34);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (113, 'Bod Seger and the Silver Bullet Band Greatest Hits', 835, 16);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (114, 'Blues on the Bayou', 832, 27);

INSERT INTO schema_inventario.tbl_discos_compactos
    VALUES (115, 'Orlando', 836, 5);

-- Insertar datos en la tabla schema_inventario.tbl_tipos_musicas --
SELECT
    *
FROM
    schema_inventario.tbl_tipos_musicas INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (11, 'Blue');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (12, 'Jazz');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (13, 'Pop');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (14, 'Rock');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (15, 'Classical');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (16, 'New Age');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (17, 'Country');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (18, 'Folk');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (19, 'International');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (20, 'Soundtracks');

INSERT INTO schema_inventario.tbl_tipos_musicas
    VALUES (21, 'Christmas');

-- Insertar datos en la tabla schema_inventario.tbl_tipos_discos_compactos --
SELECT DISTINCT
    *
FROM
    schema_inventario.tbl_tipos_discos_compactos
ORDER BY
    1 ASC
    SELECT
        *
    FROM
        schema_inventario.tbl_discos_compactos
        SELECT
            *
        FROM
            schema_inventario.tbl_disqueras_cds
            SELECT
                tdc.id_disco_compacto tdc.titulo_cd,
                dcd.id_disquera_cd,
                dc.en_existencia,
                tdc.nombre_tipo_musica,
            FROM
                schema_inventario.tbl_tipos_discos_compactos tdc
                JOIN schema_inventario.tbl_discos_compactos dc USING (id_disco_compacto) --
                JOIN schema_inventario.tbl_disqueras_cds dcd USING (id_disquera_cd)
                JOIN schema_inventario.tbl_tipos_musicas tm USING (id_tipo_musica)
    INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (101, 18);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (101, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (102, 11);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (102, 18);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (102, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (103, 18);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (103, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (104, 16);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (105, 16);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (106, 21);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (107, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (107, 17);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (108, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (108, 15);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (109, 15);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (110, 20);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (111, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (111, 18);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (112, 11);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (112, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (113, 13);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (113, 14);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (114, 11);

INSERT INTO schema_inventario.tbl_tipos_discos_compactos
    VALUES (115, 20);

-- Insertar datos en la tabla schema_inventario.tbl_artistas --
SELECT
    id_artista AS "N°",
    nombre_artista AS "Nombre y apellido de los Artistas",
    lugar_nacimiento AS "Lugar de Nacimiento
    						de los Artistas"
FROM
    schema_inventario.tbl_artistas INSERT INTO schema_inventario.tbl_artistas
    VALUES (2001, 'jennifer Warnes', 'Seattle, Washington, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2002, 'Joni Mitchell', 'Fort MacLeod, Albeta, Canadá');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2003, 'Willian Ackerman', 'Alemania');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2004, 'Kitaro', 'Toyohashi, Japón');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2005, 'Bing Crosby', 'Tacoma, Washington, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2006, 'Pasty Cline', 'Winchester, Virginia, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2007, 'Jose Carreras', 'Barcelona, España');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2008, 'Luciano Pavarotti', 'Modena, Italia');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2009, 'Placido Domingo', 'Madrid, España');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2010, 'Pascal Roge', 'Desconocido');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2011, 'John Barry', 'Desconocido');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2012, 'Leonardo Cohen', 'Montreal, Quebec, Canadá');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2013, 'Bonnie Raitt', 'Burbank, California, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2014, 'Bob Seger', 'Dearborn, Michigan, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2015, 'Silver Bullet Band', 'No aplica');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2016, 'B.B King', 'Indianola, Mississippi, Estados Unidos');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2017, 'David Motion', 'Desconocido');

INSERT INTO schema_inventario.tbl_artistas
    VALUES (2018, 'Sally Potter', 'Desconocido');


/*
 insert into schema_inventario.tbl_artistas values (201,'','');
 insert into schema_inventario.tbl_artistas values (201,'','');
 */
-- Insertar datos en la tabla schema_inventario.tbl_cds_artistas --

SELECT
    *
FROM
    schema_inventario.tbl_cds_artistas
ORDER BY
    1 ASC INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2001, 101);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2002, 102);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2002, 103);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2003, 104);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2004, 105);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2005, 106);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2006, 107);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2007, 108);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2008, 108);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2009, 108);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2010, 109);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2011, 110);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2012, 111);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2013, 112);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2014, 113);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2015, 113);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2016, 114);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2017, 115);

INSERT INTO schema_inventario.tbl_cds_artistas
    VALUES (2018, 115);




-- modulo de usuarios "schema_usuarios"


CREATE TABLE schema_usuarios.tbl_perfiles
(
    id_perfil bigint NOT NULL,
    perfil character(120) NOT NULL,
    CONSTRAINT pk_tbl_perfiles_id_perfil PRIMARY KEY (id_perfil)
)


CREATE TABLE schema_usuarios.tbl_modulos
(
    id_modulo integer NOT NULL,
    modulo character(80) NOT NULL,
    descripcion_modulo text NOT NULL,
    CONSTRAINT pk_tbl_modulos_id_modulo PRIMARY KEY (id_modulo)
 )


 CREATE TABLE schema_usuarios.tbl_modulos_perfiles
(
    id_modulo_perfil bigint NOT NULL,
    id_modulo integer,
    id_perfil integer,
    CONSTRAINT pk_id_modulo_pefil PRIMARY KEY (id_modulo_perfil),
    CONSTRAINT fk_modulo_id_modulo FOREIGN KEY (id_modulo)
        REFERENCES schema_usuarios.tbl_modulos (id_modulo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_modulo_id_perfil FOREIGN KEY (id_perfil)
        REFERENCES schema_usuarios.tbl_perfiles (id_perfil) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

CREATE TABLE schema_usuarios.tbl_sub_modulos
(
    id_sub_modulo bigint NOT NULL,
    sub_modulo text ,
    id_modulo integer,
    posicion_sub_modulo integer,
    descripcion_sub_modulo text ,
    enlace text ,
    CONSTRAINT pk_tbl_sub_modulos_id_sub_modulo PRIMARY KEY (id_sub_modulo),
    CONSTRAINT fk_tbl_sub_modulos_id_modulo FOREIGN KEY (id_modulo)
        REFERENCES schema_usuarios.tbl_modulos (id_modulo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)


CREATE TABLE schema_usuarios.tbl_estatus_usuarios
(
    id_estatu_usuario bigint NOT NULL ,
    estatu_usuario character(80),
    CONSTRAINT pk_tbl_estatus_usarios_id_estatu_usuario PRIMARY KEY (id_estatu_usuario)
)



CREATE TABLE schema_usuarios.tbl_usuarios
(
    cedula character(12) ,
    nombres character(80) ,
    apellidos character(80) ,
    correo_electronico character(80) ,
    usuario character(30) ,
    clave character(15) ,
    id_estatu_usuario integer,
    id_perfil integer,
       CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil)
        REFERENCES schema_usuarios.tbl_perfiles (id_perfil) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
        CONSTRAINT fk_tbl_usuarios_id_estatu_usuario FOREIGN KEY (id_estatu_usuario)
        REFERENCES schema_usuarios.tbl_estatus_usuarios (id_estatu_usuario) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)
