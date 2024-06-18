/*
--TSQL

--declarar variable
declare @idCliente int 


--inicializar o asignar valor
set @idCliente = 8


--if
--IF @idCliente = 8 
	--select * from Clientes where id_clientes = @idCliente

	declare @edad int
	set @idCliente = 8

	IF @idCliente = 8
	BEGIN
		set @edad = 25
		select * from Clientes where id_clientes = @idCliente
		print @edad 

		IF EXISTS(select *from Clientes where id_clientes = 10)
		print'Si existe'

    END
ELSE
  BEGIN
    print 'Error: '
	print 'id no autorizado para la consulta'
  END
  
*/

--While 
declare @contador int = 0

While @contador <= 10
BEGIN
	print @contador
	set @contador = @contador + 1
	IF @contador = 4
		break
	print('hola')
END
print('aqui continua el flujo')

BEGIN TRY
set @contador = 'Ivan Isay'
END TRY
BEGIN CATCH
	print('la variable contador solo acepta enteros ')
END CATCH

print('soy otra consulta')
print('yo tambien')
print('otro gato grrrr')


	

