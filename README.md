El prestente proyecto trata de una solución de principio a fin para un área de cobranza telefónica. 

El proyecto consiste en la implementación de un dashboard operativo desarrollado en Power BI.

La solución plantea todo el proceso de principio a fin. Desde la obtención de los datos, alojamiento de estos en una plataforma de nube, cómo se gestionan a través de un gestor de bases de datos mediante SQL, hasta cómo se presenta en producción para el departamento requerido.

Las tecnologías que utilicé para el presente proyecto fueron:

-Azure - Plataforma de cloud

-SQL Server - Gestor de bases de datos

-Power BI - Dashboard operativo.

Lo importante de este proyecto es el desarrollo detrás del dashboard. Desde la normalización de los datos hasta la integración del gestor de cloud con el gestor de bases de datos.

El dashboard en este caso lo quise dejar lo más sencillo posible, solo con la información requerida, pero claro, el diseño y los KPI´s los indicará el área de negocio correspendiente al momento de levantar los requerimientos.

Para ver con detalle el proyecto, te invito a verlo en video en la plataforma de youtube: https://www.youtube.com/watch?v=0_cfzBb8HBg



RUTA: la ruta que seguí para el presente proyecto consistió:

-  1.- Normalizar la tabla maestra, como resultado de obtuvieron 11 tablas.
  
-  2.- Posteriormente se creó un contenedor en la plataforma de Azure/Cloud, con la finalidad de alojar toda la data.

-  3.- Se creó el servidor encargado de alojar la base de datos, y posteriormente se creó y testeó la base de datos.

-  4.- Se alimentó la base de datos con las 11 tablas resultantes del punto 1.

-  5.- Se conectó Power BI a la base de datos con la finalidad visualizar los KPI´s.

-  NOTA: Se hace el modelado de la data en el gestor de base de datos y no en power BI con la finalidad de que no disminuya el desempeño del dashboard. El motor de SQL optimiza el procesamiento de datos y power BI solo muestra los datos, procurando así el mejor desempeño.

-  NOTA 2: Desafortunadamente ya no es posible compartir el dashboard, ya que la cuenta de correo electrónico con la que se creó el contenedor de Azure fue dada de baja, por lo que se perdió la conexión entre la data y el dashboard. Sim embargo, se comparten capturas de pantalla en la carpeta "Vistas Dashboard".

-  En caso de querer conocer el proyecto con detalle, puede ver el video en YouTube, el cuál dura al rededor de 30 minutos, sin embargo, puede configurar la velocidad de este para que la duración sea menor:

https://www.youtube.com/watch?v=0_cfzBb8HBg&t=4s
