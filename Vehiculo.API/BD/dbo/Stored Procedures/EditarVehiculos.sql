
-------------------------------------------------
-- PROCEDIMIENTO: EDITAR VEHÍCULOS
-------------------------------------------------
CREATE PROCEDURE dbo.EditarVehiculos
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

	UPDATE dbo.Vehiculo
	SET
		IdModelo = @IdModelo,
		Placa = @Placa,
		Color = @Color,
		Anio = @Anio,
		Precio = @Precio,
		CorreoPropietrario = @CorreoPropietrario,
		TelefonoPropietairo = @TelefonoPropietairo
	WHERE Id = @Id;
	SELECT @Id;

END