USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[crear_rol]    Script Date: 14-May-17 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LJDG].[crear_rol]
	@nombre VARCHAR(255)
  , @ID     INT OUTPUT
AS
BEGIN
	INSERT INTO LJDG.Rol (rol_nombre) VALUES (@nombre)
	SELECT @ID = rol_id FROM LJDG.Rol WHERE rol_nombre = @nombre

END
