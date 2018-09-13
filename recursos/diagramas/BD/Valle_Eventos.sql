/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     08/09/2018 10:57:34                          */
/*==============================================================*/


drop table if exists Cargo;

drop table if exists Cliente;

drop table if exists Evento;

drop table if exists Factura;

drop table if exists Pedido;

drop table if exists Personal;

drop table if exists Producto;

drop table if exists Relationship_5;

drop table if exists Usuario;

/*==============================================================*/
/* Table: Cargo                                                 */
/*==============================================================*/
create table Cargo
(
   Id_cargo             int not null,
   id_personal          int,
   nombre               char(30),
   salario              float(8,2),
   primary key (Id_cargo)
);

/*==============================================================*/
/* Table: Cliente                                               */
/*==============================================================*/
create table Cliente
(
   id_cliente           int not null,
   nombre               char(30),
   apellido             char(30),
   cedula               char(10),
   direccion            char(40),
   telefono             char(10),
   email                varchar(50),
   primary key (id_cliente)
);

/*==============================================================*/
/* Table: Evento                                                */
/*==============================================================*/
create table Evento
(
   id_evento            int not null,
   id_cliente           int,
   Usu_id_evento        int,
   ciudad               char(18),
   fecha                date,
   telefono             char(10),
   email                varchar(50),
   hora                 time,
   primary key (id_evento)
);

/*==============================================================*/
/* Table: Factura                                               */
/*==============================================================*/
create table Factura
(
   Id_factura           int not null,
   Id_pedido            int,
   cedula               char(10),
   iva                  float(8,2),
   direccion            char(50),
   telefono             char(10),
   precio_total         float(8,2),
   primary key (Id_factura)
);

/*==============================================================*/
/* Table: Pedido                                                */
/*==============================================================*/
create table Pedido
(
   Id_pedido            int not null,
   id_cliente           int,
   Id_factura           int,
   codigo               int,
   fecha_pedido         date,
   estado               char(2),
   hora_pedido          time,
   fecha_entrega        date,
   primary key (Id_pedido)
);

/*==============================================================*/
/* Table: Personal                                              */
/*==============================================================*/
create table Personal
(
   id_personal          int not null,
   id_evento            int,
   Id_cargo             int,
   direccion            char(40),
   nombre               char(30),
   apellido             char(30),
   telefono             char(10),
   cedula               char(10),
   sexo                 char(2),
   primary key (id_personal)
);

/*==============================================================*/
/* Table: Producto                                              */
/*==============================================================*/
create table Producto
(
   Id_producto          int not null,
   codigo               int,
   nombre               char(30),
   precio               float(8,2),
   descripcion          char(50),
   disponibilidad       char(2),
   tipo                 char(20),
   primary key (Id_producto)
);

/*==============================================================*/
/* Table: Relationship_5                                        */
/*==============================================================*/
create table Relationship_5
(
   Id_pedido            int not null,
   Id_producto          int not null,
   primary key (Id_pedido, Id_producto)
);

/*==============================================================*/
/* Table: Usuario                                               */
/*==============================================================*/
create table Usuario
(
   id_evento            int not null,
   usuario              char(10) not null,
   contrasena           char(15),
   primary key (id_evento)
);

alter table Cargo add constraint FK_Relationship_9 foreign key (id_personal)
      references Personal (id_personal) on delete restrict on update restrict;

alter table Evento add constraint FK_Relationship_1 foreign key (Usu_id_evento)
      references Usuario (id_evento) on delete restrict on update restrict;

alter table Evento add constraint FK_Relationship_3 foreign key (id_cliente)
      references Cliente (id_cliente) on delete restrict on update restrict;

alter table Factura add constraint FK_Relationship_8 foreign key (Id_pedido)
      references Pedido (Id_pedido) on delete restrict on update restrict;

alter table Pedido add constraint FK_Relationship_6 foreign key (id_cliente)
      references Cliente (id_cliente) on delete restrict on update restrict;

alter table Pedido add constraint FK_Relationship_7 foreign key (Id_factura)
      references Factura (Id_factura) on delete restrict on update restrict;

alter table Personal add constraint FK_Relationship_2 foreign key (id_evento)
      references Evento (id_evento) on delete restrict on update restrict;

alter table Personal add constraint FK_Relationship_8 foreign key (Id_cargo)
      references Cargo (Id_cargo) on delete restrict on update restrict;

alter table Relationship_5 add constraint FK_Relationship_5 foreign key (Id_pedido)
      references Pedido (Id_pedido) on delete restrict on update restrict;

alter table Relationship_5 add constraint FK_Relationship_5 foreign key (Id_producto)
      references Producto (Id_producto) on delete restrict on update restrict;

alter table Usuario add constraint FK_GENERALIZATION_1 foreign key (id_evento)
      references Evento (id_evento) on delete restrict on update restrict;

