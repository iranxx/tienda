create table clientes(id_cliente integer auto_increment primary key,
nombre varchar(30),
apellido varchar(40),
rfc varchar(30),
direccion varchar(40),
fechanacimiento date
);

create table productos(id_producto integer auto_increment primary key,
nombre varchar(30),
codigo varchar(20),
preciouni integer,
id_compra integer,
id_provedor integer
);

create table provedores(id_provedor integer auto_increment primary key,
nombre varchar(30),
nie varchar(20),
direccion varchar(40)
);

create table compras(id_compra integer auto_increment primary key,
id_cliente integer

);

create table cupones_promocion(id_cupon integer auto_increment primary key,
id_compra integer

);






insert into clientes(nombre,apellido,rfc,direccion,fechanacimiento) values
	('juan','de la sierra','rfc1','las lomas','2016-06-01');

insert into clientes(nombre,apellido,rfc,direccion,fechanacimiento) values
	('pancho','de juarez','rfc2','polvorin','2016-08-22');

insert into clientes(nombre,apellido,rfc,direccion,fechanacimiento) values
	('pedro','castor','rfc3','las vegas','2015-09-04');

insert into clientes(nombre,apellido,rfc,direccion,fechanacimiento) values
	('job','hernandezr','rfc4','las vias','2014-08-03');




insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('carrito','codigo uno',103,1,1);

insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('muñeco','codigo dos',80,3,3);

insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('cama','codigo tres',308,2,2);

insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('muñeca','codigo 4',803,1,1);

insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('robot','codigo 5',70,3,3);

insert into productos(nombre,codigo,preciouni,id_compra,id_provedor) values
	('cel','codigo 6',108,2,2);





insert into provedores(nombre,nie,direccion) values
	('matel','nie uno','los colorines');

insert into provedores(nombre,nie,direccion) values
	('hasbro','nie dos','mexico df sucursal');

insert into provedores(nombre,nie,direccion) values
	('nissan','nie tres','av los cacahuates');



insert into compras(id_cliente) values
	(2);

insert into compras(id_cliente) values
	(3);

insert into compras(id_cliente) values
	(1);

insert into compras(id_cliente) values
	(4);