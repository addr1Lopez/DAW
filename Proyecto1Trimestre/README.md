# Instalación del servidor web apache. Usaremos dos dominios mediante el archivo hosts: centro.intranet y departamentos.centro.intranet. El primero servirá el contenido mediante wordpress y el segundo una aplicación en python

## Instalación de apache

Lo primero que hay que hacer antes de instalar apache es actualizar los repositorios, para ello usaremos el comando:

```sudo apt get update```
> Nota: usaremos sudo al principio de ciertos comando para ejecutarlos con permisos de root

Una vez actualizados los repositorios, procedemos a instalar apache con el siguiente comando:

```sudo apt install apache2```

Cuando hayamos instalado apache, podremos comprobar que funciona accediendo a nuestro localhost en el navegador:

![foto](Imágenes/3.png)

## Instalación de MySQL

Instalamos el paquete mysql-server:

```sudo apt install mysql-server```

Ejecutamos el siguiente comando para comprobar que se ha instalado correctamente:

```sudo mysql```

![foto](Imágenes/5.png)

## Instalación de PHP

Instalamos los paquetes de libapache2-mod-php y php-mysql:

![foto](Imágenes/6.png)

Con el siguiente comando podemos comprobar la versión de php que hemos instalado:

```php -v```

![foto](Imágenes/7.png)

## Usaremos dos dominios mediante el archivo hosts: centro.intranet y departamentos.centro.intranet

Añadiremos los dominios centro.intranet y departamentos.centro.intranet, con la IP del localhost (127.0.0.1) en el fichero "/etc/hosts". Para ello, utilizaremos un editor de texto de linux llamado "nano" que usaremos durante todo el proyecto:

```sudo nano /etc/hosts```

![foto](Imágenes/8.png)

Creamos los directorios correspondientes al sitio web que queremos que se muestre cuando pongamos el dominio en el navegador:

```sudo mkdir /var/www/html/centro_intranet``` 

Listamos el directorio "/var/www/html/" para ver el directorio creado

```ls /var/www/html/```

![foto](Imágenes/9.png)

Editamos el fichero de configuración de apache del dominio centro.intranet:

```sudo nano /etc/apache2/sites-available/centro.intranet.conf``` 

![foto](Imágenes/10.png)
