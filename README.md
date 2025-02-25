# Universe

Crear una base de datos denominada "universe" en PostgreSQL que contenga tablas relacionadas con galaxias, estrellas, planetas y lunas, entre otras. La base de datos debe estar correctamente estructurada, respetando las convenciones de nombres, tipos de datos y relaciones entre tablas. Se deben cumplir los requisitos indicados a continuación para completar el proyecto de manera satisfactoria.

Requisitos:

Creación de la base de datos:

Crear una base de datos llamada universe.
Conectar a la base de datos utilizando el comando \c universe.
Creación de las tablas:

Crear las tablas galaxy, star, planet, moon, y al menos una tabla adicional.
Cada tabla debe tener una clave primaria.
Las claves primarias deben ser autoincrementales.
Estructura de las tablas:

Cada tabla debe tener una columna name de tipo VARCHAR.
Al menos dos columnas por tabla deben tener el tipo INT que no sean claves primarias ni foráneas.
Utilizar el tipo NUMERIC al menos una vez.
Utilizar el tipo TEXT al menos una vez.
Utilizar el tipo BOOLEAN al menos en dos columnas.
Relaciones entre tablas:

Cada fila de la tabla star debe tener una clave foránea que haga referencia a una fila de la tabla galaxy.
Cada fila de la tabla planet debe tener una clave foránea que haga referencia a una fila de la tabla star.
Cada fila de la tabla moon debe tener una clave foránea que haga referencia a una fila de la tabla planet.
Contenido mínimo de las tablas:

La tabla galaxy debe tener al menos 6 filas.
La tabla star debe tener al menos 6 filas.
La tabla planet debe tener al menos 12 filas.
La tabla moon debe tener al menos 20 filas.
Restricciones de las columnas:

Al menos dos columnas por tabla no deben aceptar valores NULL.
Al menos una columna de cada tabla debe ser única.
Convenciones de nombres:

Las columnas de las claves primarias deben seguir la convención de nombres: <nombre_de_tabla>_id. Por ejemplo, la tabla moon debe tener una columna llamada moon_id como clave primaria.
Pruebas y respaldo de la base de datos:

Asegúrate de ejecutar todas las pruebas para verificar que la estructura de la base de datos cumpla con los requisitos mencionados.
Si es necesario, realiza un volcado de la base de datos utilizando el comando pg_dump para guardarla en un archivo .sql y poder restaurarla posteriormente si fuera necesario.
Entregables:

Un archivo de volcado de la base de datos (universe.sql) que contenga todas las sentencias SQL necesarias para reconstruir la base de datos.
Enviar la URL del repositorio público donde se encuentre el archivo de volcado, si estás trabajando en freeCodeCamp.org.
