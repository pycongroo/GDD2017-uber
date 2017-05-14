USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[obtener_funcionalidadesxrol]    Script Date: 14-May-17 3:52:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[obtener_funcionalidadesxrol]
	@rol_id INT
AS
BEGIN
	SELECT F.func_id 'ID_Funcionalidad', F.func_descripcion 'Descripcion'
		FROM LJDG.Funcionalidad_Rol FR
		JOIN LJDG.Funcionalidad F ON (FR.fxr_funcionalidad = F.func_id)
		JOIN LJDG.Rol R ON (FR.fxr_rol = R.rol_id)
	WHERE R.rol_id = @rol_id
END
