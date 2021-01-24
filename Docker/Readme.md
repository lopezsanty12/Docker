# Instrucciones de docker

Listado de los siguientes comandos en base a mi experiencia

> `docker pull [name_image]` Descargar imagen

Descarga las imagenes desde [Docker hub](https://hub.docker.com/).

> `docker images` Lista todas la imagenes

> `docker rmi [id_images]` Eliminar imagenes

> `docker run [image]` Ejecutar imagen

> `docker run -d [image]` Ejecutar imagen en segundo plano

> `docker stop [id_o_nombre_contenedor]` Detiene el contenedor

> `docker start [id_o_nombre_contenedor]` Inicia el contenedor

> `docker restart [id_o_nombre_contenedor]` Reinicia el contenedor

> `docker stats [id_o_nombre_contenedor]` Lista recursos

Lista los recursos que utiliza el contenedor como _CPU_, _Memoria usuado_, _Id_contenedor_.

> `docker ps` Lista los contenedores en ejecución

> `docker ps -a` Lista los contenedores en ejecución y los contenedores que estan detenidos

> `docker network ls` Lista las redes de docker

> `docker volume ls` Lista los volumenes de los contenedores

> `docker rm -fv [id_o_nombre_contenedor]` Borra el contenedor

Aún cuando el contenedor esta en ejecución, se detiene y lo borra, `-fv` lo que hace es `f` forzar la detencion y `v` borrar el volumen generado por el contenedor.

> `docker logs -f [id_o_nombre_contendor]` Lista logs del contenedor

> `docker rename [nombre_contenedor] [nuevo_nombre_contenedor]` Cambiar el nombre del contenedor en ejecución

> `docker exec -it [id_o_nombre_contenedor] /bin/bash ó /bin/sh` Ingresa al contendor

Docker exec nos permite ingresar a nuestro contenedor, pero no es recomendable hacerlo porque cuando destruyes tu contenedor y crear uno nuevo debes configurar manualmente las configuraciones que tenía el anterior contenedor, para eso es recomendable crear Dockerfile.

> `docker inspect [id_o_nombre_contenedor]` Lista todas las configuraciones del contenedor como la IP del mismo

> `docker cp [archivo] [id_o_nombre_contendor]:[ruta_directorio_a_copiar_archivo]` Copiar archivos a nuestro contenedor

##### Ejemplo:

_docker cp [index.html] [apache]:[/usr/local/apache2/htdocs/index.html]_

### Ejecutar contenedor con puerto

> `docker run --name [name_contenedor] -d -p [puerto_cliente]:[puerto_contenedor] [image]:[tag]`

`--name` Se define un nombre al contenedor, de lo contrario docker le asigna un nombre aleatorio, `-d` lo ejecuta en segundo plano `-p` se define los puertos se utilizará el contenendor.

Existen otros parámetros como `--network` se utiliza para asignar una red que deseamos asignar al mismo, `-v [path]:[path_volume_image]` se utiliza para asignar un volumen a nuestro contenedor, `--restart` se utiliza para agregar políticas de reinicio para mas [información](https://docs.docker.com/config/containers/start-containers-automatically/), `--memory ["500mb"]` se utiliza para configurar cuanto memoria RAM utilizará el contenedor, `--cpu` se utiliza para asignar los cpus asignados al contenedor, más [información](https://docs.docker.com/config/containers/resource_constraints/)

# Dockerfile

Dockerfile es un archivo en la cual se utiliza para crear imagenes para mas información puedes consultar [Dockerfile](https://docs.docker.com/engine/reference/builder/)

Algunas instrucciones del Dockerfile

- FROM
- ADD
- COPY
- EXPOSE
- LABEL
- USER
- VOLUME
- WORKDIR

> `docker build -t [nombre_nuestra_imagen]:[tag] .`

Este comando es para construir nuestra imagen de docker muy importante no olvidar el punto al final `.` esto indica que el archivo para construir la imagen esta en el mismo directorio

# Dockerignore

`.dockerignore`

Docker tiene tambien su dockerignore, básicamente para ignorar archivos que no queremos en la construcción de nuestra imagen
