SELECT nombre AS 'nombre de usuario', telefono FROM tblusuarios
#AS es el alias de el encabezado del campo de la tabla que voy a mostrar

SELECT * FROM tblusuarios
#calcular el saldo maximo de los usuarios de sexo "#mujer"

SELECT * FROM tblusuarios WHERE sexo = 'M' ORDER BY saldo DESC LIMIT 1 ;
# entre comillas por que es un string # order by ordena, asc(ascendente), desc(descendente)

SELECT MAX(saldo) AS 'Saldo maximo' FROM tblusuarios WHERE sexo = 'M';
#este solo trae el saldo maximo, y no muestra nada mas que el saldo, el anterior muestra todo

#Listas nombre y tel de los usuarios con un nokia blackberry o sonny

SELECT nombre, telefono, marca FROM tblusuarios WHERE marca = 'NOKIA' OR marca = 'BLACKBERRY' OR marca = 'SONY';

SELECT nombre, telefono, marca FROM tblusuarios WHERE marca IN('NOKIA', 'BLACKBERRY','SONY');
#IN dice que si marca cumple las concidiones

#Contar los usuarios sin saldo o inactivo
SELECT COUNT(*) AS 'Usuarios sin saldo o inactivos' FROM tblusuarios WHERE saldo = 0 OR activo = 0;

#Listar el login de los usuarios con nivel 1, 2 o 3

SELECT usuario, nivel FROM tblusuarios WHERE nivel IN(1, 2, 3) ORDER BY usuario, nivel ASC;

#Listar los números de teléfono con saldo menor o igual a 300

SELECT telefono, saldo FROM tblusuarios WHERE saldo <= 300;

#calcular la suma de los saldos de los usuarios de la compañia NEXTEL

SELECT SUM(saldo) AS 'Suma de los saldos' FROM tblusuarios WHERE compañia = 'MOVISTAR' 


#contar el numero de usuarios por compañia telefonica

SELECT compañia, COUNT(*) AS 'Numero de usuarios' FROM tblusuarios GROUP BY compañia 



# contar el numero de usuarios por nivel

SELECT nivel, COUNT(*) AS 'Usuarios por nivel' FROM tblusuarios GROUP BY nivel


#listar el login de usuarios con nivel 2

SELECT usuario FROM tblusuarios WHERE nivel = 2

SELECT * FROM tblusuarios WHERE compañia = 'MOVISTAR'


#mostar el mail de los usuarios que usan gmail

SELECT * FROM tblusuarios WHERE email LIKE '%@gmail%'; 


#listar nombres y telefonos de los usuarios con telefono lG SAMSUNG O MOTOROLA


SELECT nombre, telefono, marca FROM tblusuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');



# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG

SELECT nombre, telefono, marca FROM tblusuarios WHERE marca NOT IN('LG', 'SAMSUNG');


#listar el login y tel de los usuarios con compañia telefonica y IUSACELL

SELECT usuario, telefono, compañia FROM tblusuarios WHERE compañia = 'IUSACELL';

# Listar el login de los usuarios con nivel 1 o 3

SELECT usuario, nivel FROM tblusuarios WHERE nivel = 1 OR nivel = 3;
SELECT usuario, nivel FROM tblusuarios WHERE nivel IN (1,3) ORDER BY nivel DESC ;

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 


SELECT nombre, telefono, marca FROM tblusuarios WHERE marca NOT IN ('BLACKBERRY')
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca <> 'BLACKBERRY' #<> es para excluir

# Listar el login de los usuarios con nivel 3

SELECT usuario, nivel FROM tblusuarios WHERE nivel = 3;

# Listar el login de los usuarios con nivel 0
SELECT usuario, nivel FROM tblusuarios WHERE nivel = 0
	
# Contar el número de usuarios por sexo

SELECT sexo, COUNT(*) AS 'Cantidad de usuarios' FROM tblusuarios GROUP BY sexo ;


# Listar el login y teléfono de los usuarios con compañia telefónica AT&T

SELECT usuario, telefono, compañia FROM tblusuarios WHERE compañia = 'AT&T'

# Listar las diferentes compañias en orden alfabético descendentemente

SELECT DISTINCT compañia  FROM tblusuarios ORDER BY compañia DESC 

SELECT compañia FROM tblusuarios GROUP BY compañia ORDER BY compañia DESC 


# Listar el login de los usuarios inactivos

SELECT usuario, activo FROM tblusuarios WHERE activo = 0

# Listar los números de teléfono sin saldo

SELECT telefono, saldo FROM tblusuarios WHERE saldo = 0

# Calcular el saldo mínimo de los usuarios de sexo "Hombre"}

SELECT usuario, sexo, saldo, MIN(saldo) AS 'Saldo minimo' FROM tblusuarios WHERE sexo = 'H' 

# Contar el número de usuarios por marca de teléfono


SELECT marca,COUNT(*) AS 'cantidad' FROM tblusuarios GROUP BY marca

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG


SELECT nombre, telefono,marca FROM tblusuarios WHERE marca <> 'LG'


# Calcular la suma de los saldos de los usuarios de la compañia telefónica UNEFON

SELECT SUM(saldo) AS 'la suma de los saldos de los usuarios de la compañia telefónica UNEFON' FROM tblusuarios WHERE compañia = 'UNEFON'


# Mostrar el email de los usuarios que usan hotmail

SELECT email FROM tblusuarios WHERE email LIKE '%hotmail.com%'


# Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o TELCEL

SELECT LOWER(usuario), LENGTH(telefono),telefono, LOWER(compañia) FROM  tblusuarios WHERE compañia = 'IUSACELL' OR compañia = 'TELCEL'  #LENGTH largo de la palabra, lower pasa todo a minuscula




