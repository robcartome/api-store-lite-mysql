# API para mostrar productos de una tienda Online
Respuesta de todos los productos y por categorias.
# Routes / Urls:
 - Se muestran todos los productos:   
| GET | http://server_name/api/v1/products  

 - Se muestran los productos por categoria:                                    
| GET | http://server_name/api/v1/categories/{category_id}/products  

- Se muestran todas las categorias:          
| GET | http://server_name/api/v1/categories

- Se muestra una categoria:            
| GET | http://server_name/api/v1/categories/{category_id}

- Crear una nueva categoria:                   
| POST | http://server_name/api/v1/categories 

Anexos:  
* Se entrega un archivo para visualizar las urls en Insomnia
* Se trabajo sin manejo de tokens
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
