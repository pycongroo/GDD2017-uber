USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[crear_funcxrol]    Script Date: 14-May-17 3:50:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[crear_funcxrol]
	@rol_id INT
	,@func_id INT
AS
BEGIN
	INSERT INTO LJDG.Funcionalidad_Rol (fxr_funcionalidad, fxr_rol) VALUES (@func_id, @rol_id)
END
