Drop table socios;

CREATE TABLE Socios (  
Cod_Socio int unsigned primary key, 
DNI VARCHAR(9) UNIQUE COMMENT 'Clave alternativa',
Nombre VARCHAR(20),
Apellidos VARCHAR(30),
Telefono VARCHAR(9) NOT null,
Fecha_Nac DATE,
Edad INT CHECK(EDAD>16)) ; 

CREATE TABLE Prestamos (
Cod_Prestamo INT AUTO_INCREMENT PRIMARY KEY,
Cod_Socio INT UNSIGNED,
Cod_Libro INT UNSIGNED,
Fecha_Prestamo DATE,
Fecha_Devolucio DATE,
CONSTRAINT ClaveLib FOREIGN KEY (Cod_Libro) REFERENCES
Libros(Cod_Libro) ON UPDATE CASCADE ON DELETE SET NULL,
CONSTRAINT ClaveSoc FOREIGN KEY (Cod_Socio) REFERENCES
Socios(Cod_Socio) ON UPDATE wCASCADE ON DELETE SET NULL);
