# README
## API para mostrar productos de una tienda Online
Api para mostrar productos de una tienda online. Productos en su totalidad y productos agrupados por sus categorias; se puede buscar un producto por su nombre a través de un ?query="name" enviado por la url.

## Routes / Urls:
 - Se muestran todos los productos:   
| GET | http://server_name/api/v1/products  

- Buscar Productos atravez de un parametro query
| GET | http://server_name/api/v1/products?query=nameProduct

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
* Se trabajo sin tokens

## Instalación
Pasos Para Correr en Local ( en la terminal ):
* Ruby version
  - ruby '2.7.2'
* System dependencies
  - bundle install
* Database creation
  - rails db:create
* Database initialization
  - rails db:migrate
  - rails db:seed
 
### Tecnologías usadas
- Ruby on Rails                  
Gemas Agregadas:                                
  gem 'faker' : Para los seeders                         
  gem 'rack-cors' : Para no tener problea con los cors                  
  gem 'pg_search' : Para buscar en una BD PostgreSQL                   
  


