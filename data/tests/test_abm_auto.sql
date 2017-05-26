use GD1C2017

/*DAR DE ALTA Y MODIFICAR AUTOS ARRIBA DEL 42 DESDE LA APP, LUEGO EJECUTAR ESTE SCRIPT PARA VOLVER AL ESTADO POR DEFECTO*/

SELECT *
FROM LJDG.Automovil
GO

DELETE FROM LJDG.Automovil
WHERE auto_id > 41
GO

DBCC CHECKIDENT ('LJDG.Automovil', RESEED, 41);
GO