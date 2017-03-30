--
-- Traer todos los pacientes

DELIMITER //
CREATE PROCEDURE getpacientes()
BEGIN
	select * from paciente;
END //
DELIMITER ;

-- Traer todos los doctores

DELIMITER //
CREATE PROCEDURE getdoctores()
BEGIN
	select * from doctor;
END //
DELIMITER ;

-- Traer todos las ocupaciones

DELIMITER //
CREATE PROCEDURE traerOcupacion()
BEGIN
	select ocupacion from paciente;
END //
DELIMITER ;

-- Traer todos las especialidades

DELIMITER //
CREATE PROCEDURE traerEspecialidad()
BEGIN
	select especialidad from doctor;
END //
DELIMITER ;

-- Agendar cita de pacientes

DELIMITER //
CREATE PROCEDURE setagendarCita
(IN id int,
	idDoctor int,
	idPaciente int,
	hora time,
	fecha datetime,
	tiempoduracion varchar(50),
	valor dec(18,2),
	estado varchar(15))
BEGIN
	insert into citas values(id,idDoctor,idPaciente,hora,fecha,tiempoduracion,valor,estado);
END //
DELIMITER ;

-- Agendar cita de pacientes

DELIMITER //
CREATE PROCEDURE sethorarioDoctores
(IN id int,
	idDoctor int,
	dia datetime,
	horainicio time,
	horafin time)
BEGIN
	insert into horariodoctores values(id,idDoctor,dia,horainicio,horafin);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE finalizarCobrarCitas (idC int, valor int)

BEGIN
	update cita
		set valor = valor
		where idC = idC;
END //
DELIMITER ;