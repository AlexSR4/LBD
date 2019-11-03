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