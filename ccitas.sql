-- Crear la base de datos
CREATE DATABASE cacupb;

-- Usar la base de datos
USE cacupb;

-- Crear laclientesPRIMARYsys_configvalue tabla de usuarios
CREATE TABLE usuarios (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    contrasena VARCHAR(50),
    tipo_usuario VARCHAR(10)
);

-- Insertar un usuario de ejemplo
INSERT INTO usuarios (usuario, contrasena, tipo_usuario)
VALUES ("upedidopedidopbfood@admin.com", "admin", "Foodupb_");

-- Crear la tabla de clientesestudiantes
CREATE TABLE estudiantes (
    idestudiantes INT PRIMARY KEY AUTO_INCREMENT,
    telefono INT(20),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    tipo_estudiante INT,
    fecha_de_cita VARCHAR(100),
    ciudad VARCHAR(50),
    direccion VARCHAR(50)
);

-- Crear lestudiantesa tabla de productos
CREATE TABLE cursos (
    idcursos INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(50),
    valor_curso DOUBLE
);

-- Crear la tabla de pedidos
CREATE TABLE cursos_pedidos (
    idcursos_pedidos INT PRIMARY KEY auto_increment,
    idcursos INT,
    idestudiantes INT,
    cantidad INT,
    tipo_pedido varchar(20),
    Fecha datetime,
    total DOUBLE,
    FOREIGN KEY (idcursos) REFERENCES cursos(idcursos),
    FOREIGN KEY (idestudiantes) REFERENCES estudiantes(idestudiantes)
);

insert into usuarios(usuario, contrasena, tipo_usuario) values("@operador.com", "operador", "Operador");
insert into usuarios(usuario, contrasena, tipo_usuario) values("@cocina.comclientesactor", "cocina", "Cocina");
insert into usuarios(usuario, contrasena, tipo_usuario) values("@domi.com", "domi", "Domi");
insert into cursos(nombre_curso, valor_curso) values("hamburguesa", 10000), ("papas", 5000), ("gaseosa", 3000);
USE cacupb;
ALTER TABLE estudiantes MODIFY telefono VARCHAR(20);