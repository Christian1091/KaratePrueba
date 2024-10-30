# CRUD - Users Framework Karate

## Desarrollo
Crud desarrollado con:

* [Karate](https://github.com/karatelabs/karate) de la versión 1.5.0
* JDK versión 17
* Maven
* Cucumber
* IntelliJ IDEA

## Ejecutar de manera local

* Clonar el repositorio.
* Verificar dependencias pom.xml
* Ubicarse en la clase UsersRunner y ejecutar Run UsersRunner.testUsers
* Visualizar reporte - karate-report/res/Karate-summary.html

## Funcionalidades

Este proyecto permite realizar un CRUD mediante Framework Karate utilizando el lenguaje Gherkin en donde se indica que realice la creación, búsqueda, actualización y eliminación del usuario utilizando las peticiones POST, PUT, GET, UPDATE.

### Acciones de Crear, Buscar, Actualizar y Eliminar

Crear:

* Se crea un utilizando la petición POST, el mismo es leído desde un archivo createUser.json que se invoca desde el feutere. 

Buscar:
* Se realiza la búsqueda del usuario creado utilizando la petición GET.

Actualizar:
* Se realiza la actualización del usuario creado anteriormente, se realiza una búsqueda por el nombre del usuario y utilizando la petición PUT se actualiza el nombre y email del usuario.

Buscar Usuario Actualizado:
* Se realiza la búsqueda del usuario actualizado utilizando la petición GET.

Eliminar:
* Se elimina el usuario utilizando la petición DELETE.