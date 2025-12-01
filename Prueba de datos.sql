INSERT INTO deporte (nombre, descripcion) VALUES
('Fórmula 1', 'Campeonato mundial de monoplazas'),
('MotoGP', 'Campeonato mundial de motociclismo');

INSERT INTO temporada (anio, nombre, id_deporte) VALUES
(2025, 'Fórmula 1 2025', 1),
(2025, 'MotoGP 2025', 2);

INSERT INTO circuito (nombre, pais, ciudad) VALUES
('Circuit de Barcelona-Catalunya', 'España', 'Montmeló'),
('Circuito de Jerez', 'España', 'Jerez de la Frontera');

INSERT INTO equipo (nombre, id_temporada) VALUES
('Red Bull Racing', 1),
('Ferrari', 1);

INSERT INTO piloto (nombre, apellido, nacionalidad, numero, id_equipo) VALUES
('Max', 'Verstappen', 'Países Bajos', 1, 1),
('Charles', 'Leclerc', 'Mónaco', 16, 2);

INSERT INTO carrera (nombre, fecha, hora, id_circuito, id_temporada) VALUES
('GP España 2025', '2025-06-01', '15:00:00', 1, 1);

INSERT INTO resultado (posicion, puntos, vueltas, id_carrera, id_piloto, id_equipo) VALUES
(1, 25, 66, 1, 1, 1),
(2, 18, 66, 1, 2, 2);
