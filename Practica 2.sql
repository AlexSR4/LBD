use bar;

create table Proveedores(
iIdProv int NOT NULL, 
vNombProv varchar(50) NOT NULL,
vNombCProv varchar(50) NOT NULL,
PRIMARY KEY (iIdProv),
fullProv varchar (100) as (concat(vNombProv, ' ' ,vNombCProv))
);

create index id_prov on Proveedores ( vNombProv(10));

create table OC(
iNumOC int NOT NULL, 
iIdProv int NOT NULL,
Primary KEY (iNumOC)
);

create table Inventario(
iIdProd int NOT NULL, 
vNomProd varchar(50) NOT NULL,
vCveProd varchar(50) NOT NULL,
PRIMARY KEY (iIdProd),
fullProd varchar (100) as (concat(vNomProd, ' ' ,vCveProd))
);

create index id_prod on Inventario ( vNomProd(10));

create table Clientes(
iIdCliente int NOT NULL, 
vNombCte varchar(50) NOT NULL,
PRIMARY KEY (iIdCliente)
);

create table Agente(
iIdAgente int NOT NULL, 
vNombAgente varchar(50) NOT NULL,
vPuestoAgente varchar(50) NOT NULL,
PRIMARY KEY (iIdAgente)
);

