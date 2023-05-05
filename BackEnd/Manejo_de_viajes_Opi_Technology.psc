algoritmo Manejo_de_viajes_Opi_Technology
	
	// Declaraci�n de variables y tipos de datos
	
	definir opcion_viaje como entero
	definir nombre_cliente, telefono_cliente, destino_viaje como cadena
	definir precio_viaje como real
	definir confirmacion_compra como entero
	
	// Inicio del programa
	
	escribir "Bienvenido a la aplicaci�n de Opi Technology para el manejo de viajes."
	
	// Solicitud de informaci�n del cliente
	
	escribir "Por favor ingrese su nombre completo:"
	leer nombre_cliente
	
	escribir "Por favor ingrese su n�mero de tel�fono:"
	leer telefono_cliente
	
	// Selecci�n de opci�n de viaje
	
	escribir "Seleccione una opci�n de viaje:"
	escribir "1. Viaje a la turistico (precio: $900.000)"
	escribir "2. Viaje a la compras (precio: $700.000)"
	escribir "3. Viaje a la negocios (precio: $200.000)"
	
	leer opcion_viaje
	
	// Asignaci�n del destino y precio del viaje seg�n la opci�n elegida
	
	si opcion_viaje = 1 entonces
		destino_viaje <- "Turistico"
		precio_viaje <- 900.000
	sino si opcion_viaje = 2 entonces
			destino_viaje <- "Compras"
			precio_viaje <- 700.000
		sino si opcion_viaje = 3 entonces
				destino_viaje <- "Negocios"
				precio_viaje <- 200.000
			fin si
		fin si
		fin si
			
			// Confirmaci�n de compra y guardado de informaci�n del cliente
			
		escribir "�Desea comprar el viaje de " + destino_viaje + " por $" +ConvertirATexto(precio_viaje) + "? (1-Si/ 0-N0)"
			leer confirmacion_compra
			
			si confirmacion_compra = 1
				// Guardar informaci�n del cliente y reservar el viaje
				// (c�digo para guardar y reservar)
				
				escribir "Compra realizada con �xito. �Gracias por elegir Opi Technology!"
			sino
				escribir "Gracias por visitar nuestra aplicaci�n. �Hasta pronto!"
			fin si
			
			// Fin del programa

fin algoritmo
