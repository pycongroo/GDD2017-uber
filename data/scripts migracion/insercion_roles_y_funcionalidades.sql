USE [GD1C2017]
GO

/*PARA BORRAR ASIGNACION DE FUNCIONALIDADES*/
DELETE FROM LJDG.Funcionalidad_Rol
GO
DELETE FROM LJDG.Rol_Usuario
GO
DELETE FROM LJDG.Rol
GO
DBCC CHECKIDENT ('LJDG.Rol', RESEED, 0)
GO
DELETE FROM LJDG.Funcionalidad
GO
DBCC CHECKIDENT ('LJDG.Funcionalidad', RESEED, 0)
GO

INSERT INTO [LJDG].[Rol]
           ([rol_nombre])
	VALUES ('Administrador'),
			 ('Chofer'),
			 ('Cliente')
GO

INSERT INTO [LJDG].[Funcionalidad]
           ([func_descripcion])
	VALUES	('ABM de Rol'),
			 ('Registro de Usuario'),
			 ('ABM de Cliente'),
			 ('ABM de Autom�vil'),
			 ('ABM de Chofer'),
			 ('ABM de Turno'),
			 ('Registro de Viajes'),
			 ('Rendici�n de cuenta de Chofer'),
			 ('Facturaci�n a Cliente'),
			 ('Listado Estad�stico')
GO


/* TODAS LAS FUNCIONALIDADES AL ADMINISTRADOR, NADA AL RESTO */
INSERT INTO [LJDG].[Funcionalidad_Rol]
			([fxr_funcionalidad],
			 [fxr_rol])
	SELECT func_id, 1
	FROM LJDG.Funcionalidad
GO

