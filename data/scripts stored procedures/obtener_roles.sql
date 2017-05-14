USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[obtener_roles]    Script Date: 14-May-17 3:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[obtener_roles]
AS
BEGIN
	SELECT [rol_id] 'ID_Rol'
      ,[rol_nombre] 'Nombre'
	  ,[rol_habilitado] 'Habilitado'
	FROM LJDG.Rol
END
