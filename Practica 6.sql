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
END
GO