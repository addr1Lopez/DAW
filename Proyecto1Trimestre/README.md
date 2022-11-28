# Instalación del servidor web apache. Usaremos dos dominios mediante el archivo hosts: centro.intranet y departamentos.centro.intranet. El primero servirá el contenido mediante wordpress y el segundo una aplicación en python

## Instalación de apache

Lo primero que hay que hacer antes de instalar apache es actualizar los repositorios, para ello usaremos el comando:

```sudo apt get update```
> Nota: usaremos sudo al principio de ciertos comando para ejecutarlos con permisos de root

Una vez actualizados los repositorios, procedemos a instalar apache con el siguiente comando:

```sudo apt install apache2```

Cuando hayamos instalado apache, podremos comprobar que funciona accediendo a nuestro localhost en el navegador:

![foto](Imágenes/3.png){width='100px'}

## Instalación de MySQL
