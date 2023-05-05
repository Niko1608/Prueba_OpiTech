algoritmo Manejo_de_viajes_Opi_Technology
	
	// Declaración de variables y tipos de datos
	
	definir opcion_viaje como entero
	definir nombre_cliente, telefono_cliente, destino_viaje como cadena
	definir precio_viaje como real
	definir confirmacion_compra como entero
	
	// Inicio del programa
	
	escribir "Bienvenido a la aplicación de Opi Technology para el manejo de viajes."
	
	// Solicitud de información del cliente
	
	escribir "Por favor ingrese su nombre completo:"
	leer nombre_cliente
	
	escribir "Por favor ingrese su número de teléfono:"
	leer telefono_cliente
	
	// Selección de opción de viaje
	
	escribir "Seleccione una opción de viaje:"
	escribir "1. Viaje a la turistico (precio: $900.000)"
	escribir "2. Viaje a la compras (precio: $700.000)"
	escribir "3. Viaje a la negocios (precio: $200.000)"
	
	leer opcion_viaje
	
	// Asignación del destino y precio del viaje según la opción elegida
	
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
			
			// Confirmación de compra y guardado de información del cliente
			
		escribir "¿Desea comprar el viaje de " + destino_viaje + " por $" +ConvertirATexto(precio_viaje) + "? (1-Si/ 0-N0)"
			leer confirmacion_compra
			
			si confirmacion_compra = 1
				// Guardar información del cliente y reservar el viaje
				// (código para guardar y reservar)
				
				escribir "Compra realizada con éxito. ¡Gracias por elegir Opi Technology!"
			sino
				escribir "Gracias por visitar nuestra aplicación. ¡Hasta pronto!"
			fin si
			
			// Fin del programa

fin algoritmo
