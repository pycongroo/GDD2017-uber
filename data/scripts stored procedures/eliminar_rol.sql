USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[eliminar_rol]    Script Date: 14-May-17 3:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[eliminar_rol]
	@rol_id INT
AS
BEGIN
	UPDATE LJDG.Rol
	SET rol_habilitado = 0
	WHERE rol_id = @rol_id;

	DELETE FROM LJDG.Rol_Usuario 
	WHERE rxu_rol = @rol_id;
END
