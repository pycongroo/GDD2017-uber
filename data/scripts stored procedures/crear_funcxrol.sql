USE [GD1C2017]
GO

IF EXISTS (SELECT name FROM sysobjects WHERE name='crear_funcxrol' AND type='p')
DROP PROCEDURE  LJDG.crear_funcxrol
GO

CREATE PROCEDURE LJDG.crear_funcxrol
	@rol_id INT
	,@func_id INT
AS
BEGIN
	INSERT INTO LJDG.Funcionalidad_Rol (fxr_funcionalidad, fxr_rol) VALUES (@func_id, @rol_id)
END
