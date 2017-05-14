USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[obtener_funcionalidades]    Script Date: 14-May-17 3:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[obtener_funcionalidades]
AS
BEGIN
	SELECT [func_id] 'ID_Funcionalidad'
      ,[func_descripcion] 'Descripcion'
	FROM LJDG.Funcionalidad
END
