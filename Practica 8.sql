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