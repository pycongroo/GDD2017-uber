USE [GD1C2017]
GO
/****** Object:  StoredProcedure [LJDG].[editar_turno]    Script Date: 25-May-17 7:01:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [LJDG].[editar_turno]
	@descripcion VARCHAR(255)
	,@horaInicio INT
	,@horaFin INT
	,@valorKm NUMERIC(18,2)
	,@precioBase NUMERIC(18,2)
	,@habilitado BIT
  , @turno_id     INT
AS
BEGIN

	UPDATE LJDG.Turno 
	SET turn_descripcion = @descripcion, turn_hora_inicio = @horaInicio, turn_hora_fin = @horaFin, turn_valor_km = @valorKm, turn_precio_base = @precioBase, turn_habilitado = @habilitado
	WHERE turn_id = @turno_id;

END