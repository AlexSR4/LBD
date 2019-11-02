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

