drop database if exists test;
create database test;
use test;

create table if not exists test.estudiantes (
id INT NOT NULL auto_increment,
nombre varchar(100) NOT NULL,
comidaPreferida varchar(100) NULL,
fechaNacimiento DATE NOT NULL,
CONSTRAINT estudiantes_PK PRIMARY KEY(ID)
);
INSERT INTO test.estudiantes values
("1", "Oliver Queen", "Pollo al horno", "2004-05-08"),
("", "Barry Allen", "Big Belly Burguer", "2002-07-15"),
("","Felicity Smoke", "Medialunas", "1998-01-25"),
("", "John Diggle", "Estofado", "2003-04-30");

create table test.cursos(
idcurso int auto_increment,
id  INT ,
año varchar(100) NOT NULL,
division varchar(100) NOT NULL,
CONSTRAINT cursos_PK PRIMARY KEY (idcurso),
CONSTRAINT cursos_FK FOREIGN KEY (id) references estudiantes (id)
);
INSERT INTO test.cursos values
("1","1","1","1"),
("","2","1","2"),
("","3","2","1");
