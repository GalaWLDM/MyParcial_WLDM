# MyParcial_WLDM
El consultorio odontológico Smile Fresh lo contrato a usted como parte de un equipo de trabajo para desarrollar el software 
con el que trabajaran. Dicho consultorio ha puesto como condición que las operaciones de negocio se hagan a nivel de base de 
datos y los requerimientos son los siguientes: Tener un listado de los pacientes Tener un listado de los doctores Agendar 
citas de los pacientes Ingresar los horarios de trabajo de los doctores Asociar doctores a las citas que coinciden con sus 
horarios Finalizar y cobrar las citas Mostrar un listado de citas por mes, con la información del paciente, el doctor, 
la fecha, la hora y el valor. Mostrar un listado de lo recaudado por mes, es decir al frente de cada mes, saldrá lo recaudado 
por cada doctor. 

El consultorio necesita tener la siguiente información de las personas: 
Nombre, Apellido, Dirección, Teléfono, Ocupación, Fecha de nacimiento, Edad, Genero
y la siguiente información de las citas: Fecha, hora, doctor, paciente, tiempo de duración de la cita, valor

Usted debe entregar los scripts necesarios y un archivo readme.txt donde este el orden y las instrucciones 
para correrlos en una maquina distinta.

Requerimientos Parcial Línea de profundización

1.) Ejecutar en consola mysql llamado “MyParcial_WLDM.sql” ejm: source RUTADELARCHIVO
2.) Ejecutar en consola mysql llamado “paquetes.sql” ejm: source RUTADELARCHIVO
3.) Ejecutar en consola: CALL traepaciente();   // Muestra todos los pacientes (Punto 1)
4.) Ejecutar en consola: CALL traedoctores();   // Muestra todos los doctores (Punto 2)
	Ejecutar en consola: CALL traeocupacion();   // Muestra todos los doctores (Punto 2)
	Ejecutar en consola: CALL traeespecialidad();   // Muestra todos los doctores (Punto 2)
5.) Ejecutar en consola: CALL setagendarCita(id, idDoctor, idPaciente, hora, fecha, tiempoduracion, valor, estado); (Punto 3) 

6.) Ejecutar en consola: CALL sethorarioDoctores(id, idDoctor, dia, horainicio, horafin); (Punto 4)
7.) Ejecutar en consola la linea: CALL finalizarCobrarCitas();
