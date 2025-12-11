/* CONTEO DE USURARIO

SELECT 
    COUNT(*) AS total_usuarios

FROM USUARIO;
*/

/*Agrupación de Barrios por Comuna

SELECT c.COMUNA AS nombre_comuna,
       COUNT(c.barrio) AS cantidad_barrios
FROM COMUNA_BARRIO c
GROUP BY c.COMUNA;
*/

/*Alias en Columnas (Juegos)

SELECT 
        nombre AS "Título del Juego",
       estudio_dev AS "Empresa Desarrolladora"
FROM JUEGO;
*/

/*Unión Implícita (Usuarios y Barrios)

SELECT u.primer_nombre,
       u.primer_apellido,
       c.barrio
FROM USUARIO u, COMUNA_BARRIO c
WHERE u.COMUNA_BARRIO_id = c.id;
*/

/*Conteo de Juegos por Plataforma

SELECT p.nombre AS plataforma,
       COUNT(j.id) AS juegos_registrados
FROM PLATAFORMA p, JUEGO j
WHERE j.PLATAFORMA_id = p.id
GROUP BY p.nombre;
*/

/*Alias en Columnas (Equipos)

SELECT nombre AS "Squad",
       horas AS "Tiempo Jugado"
FROM EQUIPO_JUEGO;
*/

/*Unión Implícita (Equipos y Juegos)

SELECT e.nombre AS equipo,
       j.nombre AS juego
FROM EQUIPO_JUEGO e, JUEGO j

WHERE e.JUEGO_id = j.id;
*/

/*Promedio de Existencias por Tipo de Juego:

SELECT tipo,
       COUNT(*) AS cantidad_juegos
FROM JUEGO

GROUP BY tipo;
*/

/*Unión Implícita (Logros y Juegos):

SELECT l.nombre AS logro,
       l.puntos_req,
       j.nombre AS juego
FROM LOGRO_TROFEO l, JUEGO j
WHERE l.JUEGO_id = j.id;
*/

/*Unión Implícita con Alias de Tabla (Sesiones y Árbitros)

SELECT s.fecha_agenda,
       u.primer_nombre,
       u.primer_apellido
FROM SESION_ENTRENAMIENTO s, USUARIO u
WHERE s.arbitro = u.id;
*/


