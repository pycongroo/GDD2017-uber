USE GD1C2017
IF OBJECT_ID('LJDG.IniciarSesion') IS NOT NULL
	DROP PROCEDURE LJDG.IniciarSesion
GO
CREATE PROCEDURE LJDG.IniciarSesion
	@usuario VARCHAR(30),
	@pass CHAR(64), --ya entra encriptada en SHA256
	@mensaje VARCHAR(200) OUT
AS
BEGIN
	IF (NOT EXISTS (SELECT user_id FROM LJDG.Usuario WHERE user_id = @usuario))
		SET @mensaje = 'El usuario no existe en el Sistema.'
	ELSE
	BEGIN	
		IF ((SELECT user_habilitado FROM LJDG.Usuario WHERE user_id = @usuario) = 0)
				SET @mensaje = 'El usuario no est� habilitado en el Sistema.'
		ELSE
		BEGIN
			IF ((SELECT user_password FROM LJDG.Usuario WHERE user_id = @usuario) <> @pass)
			BEGIN
				SET @mensaje = 'La contrase�a es incorrecta.'
				UPDATE LJDG.Usuario SET user_habilitado -= 1
				WHERE user_id = @usuario
			END
			ELSE
				SET @mensaje = 'OK'
		END
	END
END
GO