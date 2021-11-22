drop schema if exists `insertcoinblog`;
create schema `insertcoinblog` ;
use `insertcoinblog`;

create table `insertcoinblog`.`administrador` (
  `id_administrador` int not null,
  `nombre` text(20) not null,
  `apellido` text(20) not null,
  `usuario` varchar(20) not null,
  `email` varchar(50) not null,
  `contraseña` int(8) not null,
  primary key (`id_administrador`));

create table `insertcoinblog`.`articulo` (
  `id_articulo` int not null auto_increment,
  `título` text(20) not null,
  `fecha` date not null,
  `descripción` longtext,
  `id_administrador` int not null,
  primary key (`id_articulo`),
  foreign key (`id_administrador`) references `administrador`(`id_administrador`));
  
  create table `insertcoinblog`.`contacto` (
  `id_contacto` int not null auto_increment,
  `nombre` varchar(45) not null,
  `apellido` varchar(45) not null,
  `email` longtext not null,
  `asunto` varchar(45) not null,
  `mensaje` longtext not null,
  primary key (`id_contacto`));

insert into `administrador`(`id_administrador`,
`nombre`,
`apellido`,
`usuario`,
`email`,
`contraseña`)
values (1,
"Exequiel",
"Melin",
"admin",
"exequielmelin32@gmail.com",
"920843");

insert into `articulo`(`id_articulo`,
`título`,
`fecha`,
`descripción`,
`id_administrador`)
values(1,
"Review: Mortal Kombat",
"2021-10-01",
null,
1);

insert into `articulo`(`id_articulo`,
`título`,
`fecha`,
`descripción`,
`id_administrador`)
values(null,
"Review: Super Mario Bros",
"2021-10-01",
null,
1);

insert into `articulo`(`id_articulo`,
`título`,
`fecha`,
`descripción`,
`id_administrador`)
values(null,
"Review: Resident Evil",
"2021-10-01",
null,
1);