-- Crear base de datos
CREATE DATABASE IF NOT EXISTS motorhub_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE motorhub_db;

-- Tabla deporte
CREATE TABLE deporte (
  id_deporte INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT
);

-- Tabla temporada
CREATE TABLE temporada (
  id_temporada INT AUTO_INCREMENT PRIMARY KEY,
  anio INT NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  id_deporte INT NOT NULL,
  CONSTRAINT fk_temporada_deporte
    FOREIGN KEY (id_deporte) REFERENCES deporte(id_deporte)
);

-- Tabla circuito
CREATE TABLE circuito (
  id_circuito INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  pais VARCHAR(50),
  ciudad VARCHAR(50)
);

-- Tabla equipo
CREATE TABLE equipo (
  id_equipo INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  id_temporada INT NOT NULL,
  CONSTRAINT fk_equipo_temporada
    FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada)
);

-- Tabla piloto
CREATE TABLE piloto (
  id_piloto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  nacionalidad VARCHAR(40),
  numero INT,
  id_equipo INT NOT NULL,
  CONSTRAINT fk_piloto_equipo
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
);

-- Tabla carrera
CREATE TABLE carrera (
  id_carrera INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME,
  id_circuito INT NOT NULL,
  id_temporada INT NOT NULL,
  CONSTRAINT fk_carrera_circuito
    FOREIGN KEY (id_circuito) REFERENCES circuito(id_circuito),
  CONSTRAINT fk_carrera_temporada
    FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada)
);

-- Tabla resultado
CREATE TABLE resultado (
  id_resultado INT AUTO_INCREMENT PRIMARY KEY,
  posicion INT NOT NULL,
  puntos INT NOT NULL,
  vueltas INT,
  id_carrera INT NOT NULL,
  id_piloto INT NOT NULL,
  id_equipo INT NOT NULL,
  CONSTRAINT fk_resultado_carrera
    FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera),
  CONSTRAINT fk_resultado_piloto
    FOREIGN KEY (id_piloto) REFERENCES piloto(id_piloto),
  CONSTRAINT fk_resultado_equipo
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
);

-- Tabla usuario
CREATE TABLE usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  nombre VARCHAR(50) NOT NULL
);

-- Tabla favorito
CREATE TABLE favorito (
  id_favorito INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_piloto INT NULL,
  id_equipo INT NULL,
  CONSTRAINT fk_favorito_usuario
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  CONSTRAINT fk_favorito_piloto
    FOREIGN KEY (id_piloto) REFERENCES piloto(id_piloto),
  CONSTRAINT fk_favorito_equipo
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
);
