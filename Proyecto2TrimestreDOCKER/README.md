# Proyecto Docker

Instalamos docker y comprobamos que funciona correctamente

```apt install docker.io ```

![foto](img/1.png)



# Práctica 2 

  - Lleva a cabo la práctica descrita en el primer artículo  
Ejecuta la imagen "hello-world"

![foto](img/2.png)


Muestra las imágenes Docker instaladas  

![foto](img/6.png)

Muestra los contenedores Docker  

![foto](img/4.png)

  - Lleva a cabo la práctica descrita en el segundo artículo  
Edita el fichero Dockerfile 

![foto](img/7.png)

Construye el contenedor  

![foto](img/8.png)

Ejecútalo  

![foto](img/9.png)

Create una cuenta en hub.docker.com  

![foto](img/48.png)

Publícalo  

![foto](img/10.png)

![foto](img/11.png)

![foto](img/12.png)

![foto](img/49.png)



# Práctica 3

Descarga la imagen de ubuntu

![foto](img/13.png)

Descarga la imagen de hello-world

![foto](img/14.png)

Descarga la imagen nginx

![foto](img/15.png)

Muestra un listado de todas la imágenes

![foto](img/16.png)

Ejecuta un contenedor hello-world y dale nombre “myhello1”

![foto](img/17.png)

Ejecuta un contenedor hello-world y dale nombre “myhello2”

![foto](img/18.png)

Ejecuta un contenedor hello-world y dale nombre “myhello3”

![foto](img/19.png)

Muestra los contenedores que se están ejecutando

![foto](img/20.png)

Para el contenedor "myhello1”

![foto](img/21.png)

Para el contenedor "myhello2”

![foto](img/22.png)

Borra el contenedor “myhello1”

![foto](img/23.png)

Muestra los contenedores que se están ejecutando.

![foto](img/24.png)

Borra todos los contenedores

![foto](img/25.png)


# Práctica 4 

## Ejemplo 1: Despliegue de la aplicación Guestbook

La aplicación guestbook por defecto utiliza el nombre redis para conectarse a la base de datos, por lo tanto debemos nombrar al contenedor redis con ese nombre para que tengamos una resolución de nombres adecuada.

Los dos contenedores tienen que estar en la misma red y deben tener acceso por nombres (resolución DNS) ya que de principio no sabemos que ip va a coger cada contenedor. Por lo tanto vamos a crear los contenedores en la misma red:

```docker network create red_guestbook```

![foto](img/26.png)

Para ejecutar los contenedores:

```docker run -d --name redis --network red_guestbook -v /opt/redis:/data redis redis-server --appendonly yes```

![foto](img/27.png)

```docker run -d -p 80:5000 --name guestbook --network red_guestbook iesgn/guestbook```

![foto](img/28.png)

-  Aplicación Guestbook funcionando:

![foto](img/33.png)


## Ejemplo 2: Despliegue de la aplicación Temperaturas

El microservicio frontend se conecta a backend usando el nombre temperaturas-backend. Por lo tanto el contenedor con el micorservicio backend tendrá ese nombre para disponer de una resolución de nombres adecuada en el dns.

Vamos a crear una red para conectar los dos contenedores:

```docker network create red_temperaturas```

Para ejecutar los contenedores:

```docker run -d --name temperaturas-backend --network red_temperaturas iesgn/temperaturas_backend```

```docker run -d -p 80:3000 --name temperaturas-frontend --network red_temperaturas iesgn/temperaturas_frontend```

![foto](img/30.png)

-  Aplicación Temperaturas funcionando:

![foto](img/31.png)

## Ejemplo 3: Despliegue de Wordpress + mariadb

Para la instalación de WordPress necesitamos dos contenedores: la base de datos (imagen mariadb) y el servidor web con la aplicación (imagen wordpress). Los dos contenedores tienen que estar en la misma red y deben tener acceso por nombres (resolución DNS) ya que de principio no sabemos que ip va a coger cada contenedor. Por lo tanto vamos a crear los contenedores en la misma red:

```docker network create red_wp```

![foto](img/34.png)

Siguiendo la documentación de la imagen mariadb y la imagen wordpress podemos ejecutar los siguientes comandos para crear los dos contenedores:

![foto](img/35.png)
![foto](img/36.png)

-  Aplicación Wordpress funcionando:

![foto](img/32.png)



# Práctica 5

Instalamos el paquete docker-compose:

```apt install docker-compose```

![foto](img/37.png)


## Ejemplo 1: Despliegue de la aplicación Guestbook

En el fichero docker-compose.yml vamos a definir el escenario. 

Creamos un directorio para la aplicación guestbook en "/home/usuario/Escritorio/guestbook", y ahí creamos el fichero docker-compose.yml y añadimos las siguientes líneas:

![foto](img/38.png)


El programa docker-compose se debe ejecutar en el directorio donde este ese fichero.

![foto](img/39.png)

-  Aplicación Guestbook funcionando:

![foto](img/40.png)



## Ejemplo 2: Despliegue de la aplicación Temperaturas

En este caso el fichero docker-compose.yml estará en la ruta "/home/usuario/Escritorio/temperaturas" y tendrá esta forma:

![foto](img/41.png)

Ejecutamos el programa docker-compose desde el directorio de la aplicación

![foto](img/42.png)

![foto](img/43.png)


-  Aplicación Temperaturas funcionando:

![foto](img/44.png)


## Ejemplo 3: Despliegue de Wordpress + mariadb

Para la ejecución de wordpress el fichero docker-compose.yml tendrá el siguiente contenido:

![foto](img/45.png)








![foto](img/45.png)
![foto](img/46.png)
![foto](img/47.png)
