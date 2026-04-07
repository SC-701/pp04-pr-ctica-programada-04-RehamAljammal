
-------------------------------------------------
-- PROCEDIMIENTO: AGREGAR VEHÍCULOS
-------------------------------------------------
CREATE PROCEDURE dbo.AgregarVehiculos
	@Id uniqueidentifier,
	@IdModelo uniqueidentifier,
	@Placa varchar(max),
	@Color varchar(max),
	@Anio int,
	@Precio decimal(18,0),
	@CorreoPropietrario varchar(max),
	@TelefonoPropietairo varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRANSACTION 
	INSERT INTO dbo.Vehiculo
		(
			Id,
			IdModelo,
			Placa,
			Color,
			Anio,
			Precio,
			CorreoPropietrario,
			TelefonoPropietairo
		)
	VALUES
		(
			@Id,
			@IdModelo,
			@Placa,
			@Color,
			@Anio,
			@Precio,
			@CorreoPropietrario,
			@TelefonoPropietairo
		);
		SELECT @Id;

		COMMIT TRANSACTION

END