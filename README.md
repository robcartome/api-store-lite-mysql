# README
## API para mostrar productos de una tienda Online
Api para mostrar productos de una tienda online. Productos en su totalidad con una paginación y productos agrupados por sus categorias; se puede buscar un producto por su nombre a través de un ?query="name" enviado por la url.

## Routes / Urls:
 - Se muestran todos los productos - con una paginación de 12 en 12:   
| GET | http://server_name/api/v1/products  

- Para ver la siguiente pagina de productos, recibe un parametro "page":
| GET | http://server_name/api/v1/products?page=numPage

- Buscar Productos mediante un parametro "query":
| GET | http://server_name/api/v1/products?query=nameProduct

- Para ver los productos que coincidan con la busqueda enviando los paramtros "query" y "page" para la paginacion
| GET | http://server_name/api/v1/products?query=nameProduct&page=1

- Se muestran los productos por categoria:                                    
| GET | http://server_name/api/v1/categories/{category_id}/products  

- Para ver la siguiente pagina de productos por categoria, recibe un parametro "page":            
| GET | http://server_name/api/v1/categories/{category_id}/products?page=numPage

- Se muestran todas las categorias:          
| GET | http://server_name/api/v1/categories

- Se muestra una categoria:            
| GET | http://server_name/api/v1/categories/{category_id}

- Crear una nueva categoria:                   
| POST | http://server_name/api/v1/categories 

Anexos:  
* Se entrega un archivo para visualizar las urls en Insomnia
* Se trabajo sin tokens

## Instalación
Pasos Para Correr en Local ( en la terminal ):
* Ruby version
  - ruby '2.7.2'
* System dependencies
  - bundle install

 
### Tecnologías usadas
- Ruby on Rails                               
Gemas Agregadas:                 
  gem 'mysql2'  : Para conectarnos con la bd en Mysql    
  gem 'will_paginate'    : Para entregar datos con su respetiva paginación                         
  gem 'faker' : Para los seeders                         
  gem 'rack-cors' : Para no tener problema con los cors                                 
  
## Deployment 
Deploy en Heroku con una BD remota externa mysql                   
Crear el remoto heroku en su dashboard              
En el Config Vars detallar ->  DATABASE_URL=mysql://dbusername:dbpassword@databasehostIP:databaseserverport/databasename                                
> heroku login               
> git push heroku main             
                 
Tambien se puede establecer DATABASE_URL:                                              
> heroku config:add DATABASE_URL=mysql://dbusername:dbpassword@databasehostIP:databaseserverport/databasename
   
## Autores ✒️

* **Robert Tolentino** - *Trabajo Inicial* - [robcartome](https://github.com/robcartome)
