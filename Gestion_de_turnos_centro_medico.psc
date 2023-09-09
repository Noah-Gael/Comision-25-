Algoritmo agenda_medica
	//Definici�n de variables.
    Definir citasMedicas Como Caracter
    Definir nombrePaciente, fechaCita, horaCita, profesional, profesion como cadena
    Definir opciones, numCitas como entero
    Dimension dias[5] 
	Dimension  horarios[8] 
	Dimension lisCitas[100]
	
	//Reserva de turnos d�a.
	dias[1] <- "1.Lunes "
	dias[2] <- "2.Martes "
	dias[3] <- "3.Mi�rcoles "
	dias[4] <- "4.Jueves "
	dias[5] <- "5.Viernes "
	
	//Reserva de  turno horario.
	horarios[1] <- "09:00 a.m"
    horarios[2] <- "10:00 a.m"
    horarios[3] <- "11:00 a.m"
    horarios[4] <- "14:00 p.m"
    horarios[5] <- "15:00 p.m"
    horarios[6] <- "16:00 p.m"
    horarios[7] <- "17:00 p.m"
    horarios[8] <- "18:00 p.m"
	
	//Men� principal.
	Mientras opcion <> 4 Hacer
		
		
		Escribir "----- Men� de Citas M�dicas -----"
		Escribir "1. Agendar una cita m�dica"
		Escribir "2. Ver citas agendadas"
		Escribir "3. Cancelar una cita"
		Escribir "4. Salir"
		Escribir "-----------------------------------"
		Escribir "Seleccione una opci�n: "
		Leer opcion
		
		//Ingreso de datos de paciente, profesional (opcion 1 del men�), d�a y horario disponibles.
		Segun opcion Hacer
			
			Caso 1:
				Si numCitas < 5 Entonces
					Escribir "Ingrese el nombre del paciente: "
					Leer nombrePaciente
					Escribir "Ingrese nombre del profesional de salud: "
					leer profesional
					Escribir "Ingrese Profesi�n: "
					leer profesion
					Escribir "D�as disponibles para citas m�dicas:"
					Para i <- 1 Hasta 5 Hacer
						Escribir i, " - ", dias[i]
					Fin Para
					Escribir "Seleccione el n�mero correspondiente al d�a deseado:"
					Leer seleccionado
					
					Si seleccionado >= 1 y seleccionado <= 5 Entonces
						fechaCita <- dias[seleccionado]
						Escribir "Ha seleccionado el dia: ", fechaCita
						
					Sino
						Escribir "Selecci�n no v�lida. Por favor, seleccione un n�mero v�lido."
					Fin Si
					
					Escribir "Horarios disponibles para citas m�dicas:"
					Para i <- 1 Hasta 8 Hacer
						Escribir i, " - ", horarios[i]
					Fin Para
					Escribir "Seleccione el n�mero correspondiente al horario deseado:"
					Leer seleccionado
					
					Si seleccionado >= 1 y seleccionado <= 8 Entonces
						horaCita <- horarios[seleccionado]
						Escribir "Ha seleccionado el horario: ", horaCita
						
					Sino
						Escribir "Selecci�n no v�lida. Por favor, seleccione un n�mero v�lido."
					Fin Si
					
					
					
					
					//Datos ingresados del paciente, profesional, d�a y horario seleccionado.
					
					Escribir "-----------------------------------"
					Escribir "Cita agendada exitosamente."
					Imprimir "Nombre del Paciente: ",nombrePaciente   
					Imprimir "D�a seleccionado: ",fechaCita
					Imprimir "Horario Seleccionado ", horaCita
					Imprimir  "Nombre doctor: ", profesional
					Imprimir "Profesion: ", profesion
					
					
					numeroDeOrden<-numeroDeOrden+1
					lisCitas[numeroDeOrden]<-nombrePaciente
					Escribir lisCita [numeroDeOrden]
					
				Sino
					Escribir "No hay disponibilidad para agendar m�s citas."
				FinSi
				
				//Datos de cita agendada (opcion 2 del men�), ingresando el n�mero de cita correspondiente.
			Caso 2:
				Escribir "Ingrese nombre del paciente"
				Leer verificadorDeTurno
				Para x<-1 Hasta 100 Hacer
					si lisCitas[x]==verificadorDeTurno
						Escribir "Se encontr� turno"
					FinSi
				FinPara
				//Cancelaci�n de cita ingresada (opci�n 3 del men�)
				
			Caso 3:
				Escribir "Ingrese nombre del paciente"
				Leer verificadorDeTurno
				Para x<-1 Hasta 100 Hacer
					si lisCitas[x]==verificadorDeTurno
						Escribir "Turno cancelado"
					fin si
				fin para
				
		FinSegun
FinMientras
	
FinAlgoritmo