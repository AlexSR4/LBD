use bar;


create table Proveedores (
iIdProv int not null,
vNomProv varchar (45),
vNomCProv varchar(45),
vTelProv varchar(12),
vMailProv varchar(20),
constraint pk_Prov primary key(iIdProv),
fullPRov varchar (100) as (concat(vNomProv, ' ' ,vNomCProv))
);

create table FacturaCom (
iIdFacC int not null,
iIdProv int,
iIdProd int,
iCant int,
fTotal float,
constraint pk_FacC primary key(iIdFacC)
);

create table Productos (
iIdProd int not null,
iIdProv int,
vTipoProd varchar(45),
fCosto float,
fPrecio float,
constraint pk_Prod primary key(iIdProd)
);

create table Carta (
iIdCarta int not null,
iIdProd int,
constraint pk_Carta primary key(iIdCarta)
);

create table Clientes (
iIdCte int not null,
vNomCte varchar (45),
vNomCCte varchar(45),
vTelCte varchar(12),
vMailCte varchar(20),
constraint pk_Cte primary key(iIdCte),
fullPRov varchar (100) as (concat(vNomCte, ' ' ,vNomCCte))
);

create table Ticket (
iIdTicket int not null,
iIdCte int,
iIdCuenta int,
iIdEmp int,
iIdProd int,
iIdFacV int,
constraint pk_Ticket primary key(iIdTicket)
);

create table Cuenta (
iIdCuenta int not null,
iIdEmp int,
iIdProd int,
fTotal float,
constraint pk_Cuenta primary key(iIdCuenta)
);

create table FacturaVenta (
iIdFacV int not null,
iIdCte int,
iIdProd int,
iCant int,
fTotal float,
constraint pk_FacV primary key(iIdFacV)
);

create table Empleado (
iIdEmp int not null,
vNomEmp varchar (45),
vApeEmp varchar(45),
vPuesto varchar(12),
fSalario float,
constraint pk_Emp primary key(iIdEmp),
fullPRov varchar (100) as (concat(vNomEmp, ' ' ,vApeEmp))
);

create table Mesa (
iIdMesa int not null,
iIdEmp int,
iIdCuenta int,
iIdCarta int,
constraint pk_Mesa primary key(iIdMesa)
);


INSERT INTO Proveedores VALUES ('01','Alimentos Mexicanos, S.A. de C.V.','AMSA','83345748','amsa@gmail.com');
INSERT INTO Proveedores VALUES ('02','Productos del Norte, S.A. de C.V.','PNSA','82574691','pnsa@grupopnsa.com');
INSERT INTO Proveedores VALUES ('03','Refresco Original, S.A. de C.V.','REOSA','84715962','ventas@reosa.com');
INSERT INTO Proveedores VALUES ('04','Comercializadora Cali, S.A. de C.V.','COCASA','15478219','ventas@cocasa.com');
INSERT INTO Proveedores VALUES ('05','Proplastic, S.A. de C.V.','PROPLASTIC','84657218','galmanza@proplastic.com');
INSERT INTO Proveedores VALUES ('06','Muebles Troncoso, S.A. de C.V.','Troncoso','81463527','atencion@gmail.com');
INSERT INTO Proveedores VALUES ('07','Condominios Regiomontanos, S.A. de C.V.','CONREG','81474747','condominios@gmail.com');
INSERT INTO Proveedores VALUES ('08','Floreria Rosa, S.A. de C.V.','FLORA','83542817','flores@gmail.com');
INSERT INTO Proveedores VALUES ('09','Bebidas Mocte, S.A. de C.V.','BEMOSA','8114702484','venta@bemosa.com');
INSERT INTO Proveedores VALUES ('10','Molinos Amarillos, S.A. de C.V.','MOASA','51479862','tortillas@gmail.com');
INSERT INTO Proveedores VALUES ('11','Panaderia Luz, S.A. de C.V.','PASA','83345891','panaderia@gmail.com');
INSERT INTO Proveedores VALUES ('12','Manteles Bonitos, S.A. de C.V.','MABOSA','8115417482','manteles@mabosa.com');

INSERT INTO Productos VALUES ('01','01','Pollo','50.00','75.00');
INSERT INTO Productos VALUES ('02','01','Comino','10.00','20.00');
INSERT INTO Productos VALUES ('03','02','Vaso','15.00','35.00');
INSERT INTO Productos VALUES ('04','03','Refresco Cola','10.00','35.00');
INSERT INTO Productos VALUES ('05','03','Refresco Naranja','9.00','35.00');
INSERT INTO Productos VALUES ('06','03','Refreso S/A','12','35.00');
INSERT INTO Productos VALUES ('07','01','Carne','100.00','190.00');
INSERT INTO Productos VALUES ('08','05','Cubiertos','5.00','20.00');
INSERT INTO Productos VALUES ('09','08','Tulipan','40.00','50.00');
INSERT INTO Productos VALUES ('10','04','Cazo','250.00','450.00');
INSERT INTO Productos VALUES ('12','12','Pan','2.00','10.00');
INSERT INTO Productos VALUES ('13','10','Tortillas','2.00','5.00');
INSERT INTO Productos VALUES ('14','13','Cubierta','12.00','50.00');
INSERT INTO Productos VALUES ('15','12','Concha','1.00','5.00');
INSERT INTO Productos VALUES ('16','11','Volcan','1.00','5.00');
INSERT INTO Productos VALUES ('17','09','Jugo','10.00','25.00');
INSERT INTO Productos VALUES ('18','08','Rosa','2.00','8.00');
INSERT INTO Productos VALUES ('19','01','Pescado','70.00','120.00');
INSERT INTO Productos VALUES ('20','02','Alitas','50.00','90.00');
INSERT INTO Productos VALUES ('21','03','Bebida energetica','50.00','85.00');
INSERT INTO Productos VALUES ('22','04','Rockola','1000.00','3500.00');
INSERT INTO Productos VALUES ('23','08','Orquidea','12.00','50.00');
INSERT INTO Productos VALUES ('24','09','Bebida saborizada','10.00','50.00');
INSERT INTO Productos VALUES ('25','12','Sillas','100.00','350.00');
INSERT INTO Productos VALUES ('26','15','Plato','10.00','35.00');
INSERT INTO Productos VALUES ('27','11','Dona','1.00','10.00');
INSERT INTO Productos VALUES ('28','02','Hielo','10.00','40.00');
INSERT INTO Productos VALUES ('29','05','Servilletero','10.00','45.00');
INSERT INTO Productos VALUES ('30','07','Servicios','1000.00',' ');
INSERT INTO Productos VALUES ('31','09','Agua Carbonatada','10.00','50.00');
INSERT INTO Productos VALUES ('32','12','Mesas','250.00','510.00');
INSERT INTO Productos VALUES ('33','02','Celular','11000.00','18000.00');
INSERT INTO Productos VALUES ('34','02','Anuncio','1500.00','2500.00');
INSERT INTO Productos VALUES ('35','03','Cerveza','10.00','50.00');
INSERT INTO Productos VALUES ('36','05','Salero','10.00','70.00');
INSERT INTO Productos VALUES ('37','04','Banco','200.00','350.00');
INSERT INTO Productos VALUES ('38','09','Whisky','750.00','1500.00');
INSERT INTO Productos VALUES ('39','01','Verduras','100.00','500.00');
INSERT INTO Productos VALUES ('40','02','Sillon','700.00','1100.00');
INSERT INTO Productos VALUES ('41','03','Jugos con Piquete','15.00','120.00');
INSERT INTO Productos VALUES ('42','01','Boneless','45.00','150.00');

INSERT INTO Clientes VALUES ('01','Oscar Mendoza Almaraz',' ','8114705848','patricio.mg@gmail.com');
INSERT INTO Clientes VALUES ('02','Miguel Arrambide Villaseñor',' ','8111647852','miguel814@gmail.com');
INSERT INTO Clientes VALUES ('03','Daniel Castillo Mondragon',' ','8125647813','danielcastillo@gmail.com');
INSERT INTO Clientes VALUES ('04','Dionisio Garza Escutia',' ','8124689764','garzaescutia1@gmail.com');
INSERT INTO Clientes VALUES ('05','Ivan Gomez Leal',' ','8118174532','ivangomez14@gmail.com');
INSERT INTO Clientes VALUES ('06','Luis Angel Cantu Garza',' ','8114785814','santugarza14@gmail.com');
INSERT INTO Clientes VALUES ('07','Jose Perez Cervantes',' ','8134569887','joseperezc@gmail.com');
INSERT INTO Clientes VALUES ('08','Antonio Duran Dominguez',' ','8114577845','antoniodurandominguez@gmail.com');
INSERT INTO Clientes VALUES ('09','Alejandro Tellez Salazar',' ','8125621348','alejandrotesa@gmail.com');
INSERT INTO Clientes VALUES ('10','Ruben Garcia Arellano',' ','8114578968','rubengarcia_are@gmail.com');
INSERT INTO Clientes VALUES ('11','David Davila Luna',' ','83349765','david_davila@gmail.com');
INSERT INTO Clientes VALUES ('12','Omar Camacho Gonzalez',' ','81101415','omarcamacho@gmail.com');
INSERT INTO Clientes VALUES ('13','Dionisio Fernandez Guel',' ','81475896','dionisiofer@gmail.com');
INSERT INTO Clientes VALUES ('14','Jose Solis Betancourt',' ','8115489257','solisbeta@gmail.com');
INSERT INTO Clientes VALUES ('15','Luis Angel Feliz Rodriguez',' ','8114758963','luisangel_154@gmail.com');
INSERT INTO Clientes VALUES ('16','Alejandro Ramos Pineda',' ','1478529637','pineda_1548@gmail.com');
INSERT INTO Clientes VALUES ('17','Raul Arizpe Carrillo',' ','1234567845','raul_arizpe_@gmail.com');
INSERT INTO Clientes VALUES ('18','Daniel Sifuentes Peña',' ','1548926811','danielsifu@gmail.com');
INSERT INTO Clientes VALUES ('19','Ivan Rodriguez Riojas',' ','8114785214','ivanrodri@gmail.com');
INSERT INTO Clientes VALUES ('20','Luis Angel Farias Perez',' ','8114593245','luisangel1548@gmail.com');
INSERT INTO Clientes VALUES ('21','David Rios Cerda',' ','8114758321','davidrios_7@gmail.com');
INSERT INTO Clientes VALUES ('22','Antonio Botello Serna',' ','8112342345','antoniobotello@gmail.com');
INSERT INTO Clientes VALUES ('23','Ruben Hernandez Zapata',' ','8111123451','rubenhernanez@gmail.com');
INSERT INTO Clientes VALUES ('24','Jose Salinas Sobis',' ','811114758988','salinassolis@gmail.com');
INSERT INTO Clientes VALUES ('25','Ivan Victoria Garza',' ','8114786587','victori_ivan147@gmail.com');
INSERT INTO Clientes VALUES ('26','Omar Rupert Lopez',' ','8114758921','omarrupert_@gmail.com');
INSERT INTO Clientes VALUES ('27','Raul Alvarez Wong',' ','8114574628','wong_alvarez@gmail.com');
INSERT INTO Clientes VALUES ('28','Ruben Perez Meza',' ','8114571414','perezmeza_414.mg@gmail.com');
INSERT INTO Clientes VALUES ('29','Antonio Lloris Silva',' ','8114521524','antonio.lloris@gmail.com');
INSERT INTO Clientes VALUES ('30','Daniel Mancha Martinez',' ','8117857857','daniel_mm@gmail.com');

INSERT INTO Empleado VALUES ('01','Jose','Rios Martinez','Mesero','1500.00');
INSERT INTO Empleado VALUES ('02','Esteban','Fuente Garcia','Mesero','1200.00');
INSERT INTO Empleado VALUES ('03','Juana','Perez Moya','Mesero','1200.00');
INSERT INTO Empleado VALUES ('04','Alicia','Silva Flores','Mesero','1100.00');
INSERT INTO Empleado VALUES ('05','Dora','Rios Silva','Mesero','1000.00');
INSERT INTO Empleado VALUES ('06','Alejandro','Olvera Solis','Mesero','1500.00');
INSERT INTO Empleado VALUES ('07','Manuel','Sanchez Salinas','Mesero','1350.00');
INSERT INTO Empleado VALUES ('08','Luna','Gonzalez Martinez','Mesero','1250.00');
INSERT INTO Empleado VALUES ('09','Joe Maria','Olivares Bueno','Mesero','1500.00');
INSERT INTO Empleado VALUES ('10','Mayela','Susto Agualeguas','Mesero','1500.00');
INSERT INTO Empleado VALUES ('11','Natalia','Silva Gutierrez','Mesero','1800.00');
INSERT INTO Empleado VALUES ('12','Evelin','Oliva Granel','Gerente','5000.00');
INSERT INTO Empleado VALUES ('13','Elver','Silla Moreno','Administrador','4000.00');
INSERT INTO Empleado VALUES ('14','Mauricio','Blanco PLuton','Cajero','2100.00');
INSERT INTO Empleado VALUES ('15','David','Arrambide Santos','Cajero','2100.00');
INSERT INTO Empleado VALUES ('16','Marco Antonio','Villa Gomez','Cajero','2300.00');
INSERT INTO Empleado VALUES ('17','Sergio','Ayala Martinez','Parrillero','2500.00');
INSERT INTO Empleado VALUES ('18','Celedonio','Castillo Rodriguez','Parrillero','3200.00');
INSERT INTO Empleado VALUES ('19','Maria','Soto Alejandro','Cantinero','1800.00');
INSERT INTO Empleado VALUES ('20','Arcelia','Rodriguez Tellez','Cantinero','2000.00');

UPDATE Clientes SET vTelCte = '8114757474' WHERE vTelCte='8111123451';
UPDATE Productos SET fCosto = '10.00' WHERE iIdProd='14.00';
UPDATE Empleado SET vPuesto = 'Supervisor' WHERE iIdEmp='09';
UPDATE Productos SET fCosto = '50.00' WHERE iIdProd='30.00';
UPDATE Productos SET fCosto = '2.00' WHERE iIdProd='22.00';

DELETE FROM Productos WHERE iIdProd='02';
DELETE FROM Productos WHERE iIdProd='06';
DELETE FROM Productos WHERE iIdProd='08';
DELETE FROM Productos WHERE iIdProd='20';
DELETE FROM Empleado WHERE iIdEmp='05';


select * from Productos
	where vTipoProd like 'R%';

	select * from Productos
	where vTipoProd like 'C%';

	select *from Productos 
	where vTipoProd like 'O%';

	select *from Productos
	where iIdProv like '02'
	order by iIdProd;

	select *from Productos
	where iIdProv like'11'
	order by iIdProd;

	select COUNT(iIdProd) as 'Total de productos' from Productos;
	select COUNT(iIdProv) as 'Total de proveedores' from Proveedores ;
	select MIN(fPrecio) as 'Producto mas barato' from Productos;
	select MAX(fPrecio)as 'Producto mas caro' from Productos;
	select MIN(iIdEmp) as 'Primer Empleado' from Empleado;
	
Create Trigger Nuevo_Producto ON Productos
for INSERT
AS
BEGIN
	set nocount on;
	INSERT INTO DataSystem VALUES((SELECT COUNT(*) FROM DataSystem) + 1,'Se agregó el ID' + STR((SELECT iIdProd FROM inserted)),'Productos');
END;
GO


select * from  
		(select iIdEmp, count (iIdEmp) as 'Cantidad de empleados'
			from Empleado
			group by iIdEmp) as e
		where e.[Cantidad de empleados]>0

select * from  
		(select fPrecio, count (fPrecio) as 'Cantidad Productos'
			from Productos
			group by fPrecio) as p
		where p.[Cantidad Productos]>0

with Empleado
	as 
	(select iIdEmp,count(iIdEmp)as e
		from Empleado
		group by Empleado_id)
	select *
	from Empleado
	where Empleado.e>0


with PrecioProductos
	as 
	(select fPrecio, count(fPrecio) as p
		from Productos
		group by fPrecio
		)
	select *
	from fPrecio
	where fPrecio.p >0


create view Productos
as 
select *from iIdProd;

create view Proveedores
as 
select *from Productos;

create view Ticket
as 
select *from Clientes;

CREATE VIEW Productos2
AS
SELECT * FROM Proveedores WHERE iIdProv = '11';

CREATE VIEW Proveedores2
AS
SELECT * FROM Productos WHERE iIdProd = '20';


USE bar

CREATE TRIGGER tr_despedido ON  Empleado AFTER DELETE 
AS
DECLARE @iIdEmp VARCHAR(45)
SELECT @iIdEmp = iIdEmp FROM deleted
DECLARE @vNomEmp VARCHAR(45)
SELECT @vNomEmp = vNomEmp FROM deleted
GO
    
CREATE TRIGGER tr_cliente ON Pedido AFTER INSERT
AS
DECLARE @vNomCte VARCHAR(45)
SELECT @vNomCte = vNomCte FROM inserted
    
CREATE TRIGGER tr_log ON Cliente for DELETE
AS
		set nocount on;
		INSERT INTO DataSystem VALUES((SELECT COUNT(*) FROM DataSystem) + 1,'Se elimino el ID' + STR((SELECT iIdCte FROM deleted)),'Cliente',GETDATE()System_User);
GO
		
CREATE PROCEDURE pr_cte
AS
SELECT * FROM Cliente

EXEC pr_cte

CREATE PROCEDURE pr_cuenta
AS

SELECT * FROM Cuenta

GO;

CREATE PROCEDURE pr_empleado
AS
sql_empleado
GO;

EXEC pr_empleado;

CREATE PROCEDURE
ClienteP(@CteNom varchar(45), @TelCte int, @DirCte varchar(45))
AS
	BEGIN
	INSERT INTO Cliente(CteNom , TelCte , DirCte)
	VALUES (@CteNom, @TelCte, @DirCte)
	END
EXEC ClientePr @CteNom = 'Omar', @TelCte = 8114751487, @DirCte = 'Rosa 789'