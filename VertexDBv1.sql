CREATE TABLE Administrador (
  id_administrador INTEGER(30) NOT NULL AUTO_INCREMENT,
  nombre varchar(100) NOT NULL,
  cedula int(100),
  PRIMARY KEY (id_administrador)
);

CREATE TABLE Clientes (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(20) NOT NULL,
  identificacion INTEGER(60) NOT NULL,
  PRIMARY KEY (id_cliente)
);

CREATE TABLE Tipoevento(
  id_tipoevento integer(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(11) NOT NULL,
  PRIMARY KEY (id_tipoevento)
);


CREATE TABLE Juegos(

	id_juegos INTEGER(11) NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(250) NOT NULL,
	numerojugadores integer(11) NOT NULL,
  version VARCHAR(250) NOT NULL,
  internet VARCHAR(250) NOT NULL,
  descripcion VARCHAR(250) NOT NULL,
  fechaobtenido DATE(250) NOT NULL DEFAULT "0000-00-00",
  idioma VARCHAR(250) NOT NULL,
  proveedor VARCHAR(250) NOT NULL,
	PRIMARY KEY (id_juegos)
	);


CREATE TABLE Gafas(
  id_gafas int(11) NOT NULL,
  Modelo varchar(40) NOT NULL,
  id_juegos INTEGER(250) NOT NULL,
  PRIMARY KEY (id_gafas),
  FOREIGN KEY (id_juegos) REFERENCES juegos(id_juegos)
);

CREATE TABLE Evento(

	id_evento INTEGER(11) NOT NULL AUTO_INCREMENT,
	id_cliente INTEGER(11) NOT NULL,
  id_administrador INTEGER(11) NOT NULL,
  id_gafas INTEGER(11) NOT NULL,
  id_tipoevento INTEGER(11) NOT NULL,
  id_juegos INTEGER(11) NOT NULL,
  id_jugadores INTEGER(11) NOT NULL,
	fecha_evento DATE NOT NULL DEFAULT "0000-00-00",
	calificacion VARCHAR(250) NOT NULL,
	comentarios VARCHAR(250) NOT NULL,
	descripcion VARCHAR(400) NOT NULL,
	hora_inicio TIME NOT NULL,
  hora_final TIME NOT NULL,
	PRIMARY KEY (id_evento),
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_clientes),
  FOREIGN KEY (id_administrador) REFERENCES Administrador(id_administrador),
  FOREIGN KEY (id_tipoevento) REFERENCES eventos(id_tipoevento),
  FOREIGN KEY (id_juegos) REFERENCES Gafas(id_juegos),
  FOREIGN KEY (id_gafas) REFERENCES Gafas(id_gafas),
  FOREIGN KEY (id_jugadores) REFERENCES Jugadores(id_jugadores)
	);

CREATE TABLE Jugadores(

  id_jugadores INTEGER(11) NOT NULL AUTO_INCREMENT,
  nombre INTEGER(11) NOT NULL,
  cedula INTEGER(11) NOT NULL,
  fechadenaciemiento INTEGER(11) NOT NULL,
  numero_contratos_favoritos INTEGER(11) NOT NULL,
  id_juegos integer(11) NOT NULL,
  PRIMARY KEY (id_jugadores),
  FOREIGN KEY (id_juegos) REFERENCES eventos(id_juegos)
  );
