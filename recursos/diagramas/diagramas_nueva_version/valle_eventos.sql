/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     13/09/2018 02:48:06 p. m.                    */
/*==============================================================*/


drop table if exists Cargo;

drop table if exists Cliente;

drop table if exists Evento;

drop table if exists Factura;

drop table if exists Pedido;

drop table if exists Personal;

drop table if exists Producto;

/*==============================================================*/
/* Table: Cargo                                                 */
/*==============================================================*/
create table Cargo
(
   Id_cargo             int not null auto_increment,
   nombre               varchar(64),
   salario              decimal(8,2),
   primary key (Id_cargo)
);

/*==============================================================*/
/* Table: Cliente                                               */
/*==============================================================*/
create table Cliente
(
   id_cliente           int not null auto_increment,
   cedula               char(10),
   nombre               char(128),
   apellido             char(128),
   telefono             char(16),
   direccion            char(128),
   email                varchar(64),
   primary key (id_cliente)
);

/*==============================================================*/
/* Table: Evento                                                */
/*==============================================================*/
create table Evento
(
   id_evento            int not null auto_increment,
   id_cliente           int,
   nombre               varchar(64),
   ciudad               varchar(32),
   telefono             varchar(16),
   email                varchar(64),
   fecha_hora           datetime,
   primary key (id_evento)
);

/*==============================================================*/
/* Table: Factura                                               */
/*==============================================================*/
create table Factura
(
   Id_factura           int not null auto_increment,
   id_evento            int,
   cedula               varchar(10),
   nombres_completos    varchar(256),
   telefono             varchar(16),
   direccion            varchar(128),
   email                varchar(64),
   subtotal             decimal(8,2),
   descuento            decimal(8,2),
   iva                  decimal(8,2),
   total                decimal(8,2),
   fecha_factura        date,
   primary key (Id_factura)
);

/*==============================================================*/
/* Table: Pedido                                                */
/*==============================================================*/
create table Pedido
(
   Id_pedido            int not null auto_increment,
   id_evento            int,
   Id_producto          int,
   id_personal          int,
   codigo               varchar(32),
   estado               varchar(2),
   fecha_pedido         datetime,
   fecha_entrega        datetime,
   primary key (Id_pedido)
);

/*==============================================================*/
/* Table: Personal                                              */
/*==============================================================*/
create table Personal
(
   id_personal          int not null auto_increment,
   Id_cargo             int,
   cedula               char(10),
   nombre               char(128),
   apellido             char(128),
   telefono             char(16),
   direccion            char(128),
   sexo                 char(2),
   nick                 varchar(120),
   clave                varchar(64),
   primary key (id_personal)
);

/*==============================================================*/
/* Table: Producto                                              */
/*==============================================================*/
create table Producto
(
   Id_producto          int not null auto_increment,
   codigo               varchar(32),
   nombre               varchar(64),
   precio               decimal(8,2),
   descripcion          varchar(128),
   disponibilidad       varchar(2),
   tipo                 varchar(32),
   primary key (Id_producto)
);

alter table Evento add constraint FK_cliente_evento foreign key (id_cliente)
      references Cliente (id_cliente);

alter table Factura add constraint FK_factura_pedido foreign key (id_evento)
      references Evento (id_evento);

alter table Pedido add constraint FK_pedido_evento foreign key (id_evento)
      references Evento (id_evento);

alter table Pedido add constraint FK_persona_pedido foreign key (id_personal)
      references Personal (id_personal);

alter table Pedido add constraint FK_producto_servicio foreign key (Id_producto)
      references Producto (Id_producto);

alter table Personal add constraint FK_cargo_personal foreign key (Id_cargo)
      references Cargo (Id_cargo);

