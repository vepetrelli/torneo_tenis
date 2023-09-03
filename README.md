# torneo_tenis es una base de datos creada en phpMyAdmin para poner en práctica distintas consultas SQL. Simula las inscripciones necesarias para llevar a cabo un torneo de tenis. 
Está compuesta por 3 tablas: Participantes, Categorias e Inscripciones.
A su vez la tabla Participantes posee los campos id_participante(PK), dni_participante, apellido, nombre, direccion, edad, telefono, sexo.
La tabla Categorias posee los campos id_categoria(PK), nombre, edad_min, edad_max, sexo.
La tabla Inscripciones posee los campos num_inscripcion(PK), fecha_inscripcion, abono_inscripcion, fk_categoria(FK), fk_participante(FK)
