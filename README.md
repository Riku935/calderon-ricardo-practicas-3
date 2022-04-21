## Datos Personales 
Luis Ricardo Calderon Rios

Correo **GitHub**: exodo302.richy@gmail.com

Correo academico: cdmx2001@amerike.edu.mx

![Foto Mia](/Assets/Foto%20de%20Perfil.jpg)

---- 

Para iniciar el repositorio local, conectarlo al remoto, y cambiar el nombre de la rama se hace lo siguiente:

```git
$ > git init

$ > git branch -M main

$ > git remote add origin https://vinculodelrepositorio
```
Para subir los archivos al repositorio se usan los siguientes comandos (El archivo README es ejemplo, puede ser cualquier archivo)
``` git
$ > touch README.md

$ > git add README.md ó $ > git add -A

$ > git commit -m "Primer commit"

$ > git push -u origin main
```
Para descargar el repositorio remoto al local y sincronizarlos
```git
$ > git pull -u origin main
```
Para clonar repositorios
```git
$ > git clone [url-repositorio]
```
