create table platos(id_platillo integer auto_increment primary key,
nombre varchar(30),
descripcion varchar(50),
foto varchar(20),
precio integer,
id_categoria integer
);

create table ingredientes(id_ingrediente integer auto_increment primary key,
nombre varchar(30),
unidades integer,
almacen integer,
cantidad varchar(20),
id_platillo integer
);

create table categorias(id_categoria integer auto_increment primary key,
nombre varchar(30),
descripcion varchar(50),
encargado varchar(20)

);

create table nuevos_platillos(id_nuevoplatillo integer auto_increment primary key,
id_platillo integer

);


insert into platos(nombre,descripcion,foto,precio,id_categoria) values
	('camarones empanizados','sabe chido','espegueti.jpg',50,1);

insert into platos(nombre,descripcion,foto,precio,id_categoria) values
	('bistec','de olla','frijoles.jpg',30,2);

insert into platos(nombre,descripcion,foto,precio,id_categoria) values
	('tacos','verduras y asi','verduras.jpg',40,3);


insert into platos(nombre,descripcion,foto,precio,id_categoria) values
	('quesadillas','de chales','quesadilla.jpg',20,3);





insert into ingredientes(nombre,unidades,almacen,cantidad,id_platillo) values
	('tortilla',2,50,'2 tortillas',3);

insert into ingredientes(nombre,unidades,almacen,cantidad,id_platillo) values
	('marisco',3,10,'50gr',1);

insert into ingredientes(nombre,unidades,almacen,cantidad,id_platillo) values
	('bistec de puerco',1,5,'80gr',2);

insert into ingredientes(nombre,unidades,almacen,cantidad,id_platillo) values
	('pan molido',1,7,'80gr',1);




insert into categorias(nombre,descripcion,encargado) values
	('mariscos','camarones,ostiones etc','encarg1');

insert into categorias(nombre,descripcion,encargado) values
	('carnes','milanesas,pechugas','encarg2');

insert into categorias(nombre,descripcion,encargado) values
	('mexicana','tacos etc','encarg3');