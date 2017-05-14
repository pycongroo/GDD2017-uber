USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[editar_rol]    Script Date: 14-May-17 3:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[editar_rol]
	@rol_id     INT
	,@rol_nombre VARCHAR(255)
	,@rol_habilitado BIT
AS
BEGIN

	UPDATE LJDG.Rol 
	SET rol_nombre = @rol_nombre, rol_habilitado = @rol_habilitado
	WHERE rol_id = @rol_id;

	DELETE FROM LJDG.Funcionalidad_Rol
	WHERE fxr_rol = @rol_id;

END
