# Aplicación Inmobiliaria - Fantom

~Autenticación con Devise~
*rails g devise:install*

~Usuario de Devise~
*rails g devise usuario*
*rails g devise:views*

~Migrar Datos del devise~
rake:db migrate

~Generar controlador para el landing~
rails g controller landing index

~Colocar en modo root el index del landing~

#Moficiar los campos por defecto devise
~Agregar nuevos campos a la tabla de usuario ~
-En routes.rb -> inidicar al controlador que se están sobreescribiendo algunos metodos

#Borrar la BD Migrada
~Como se han agregado nuevos campos se debe de elimnar la tabla anterior~
-Ingresar al sqlite y borrar la tabla o DB
rake db:drop:all (Si hubiera error)
rake db:drop:_unsafe (utilizar este comando _unsafe)

#Crear un scaffold para las cotizaciones (Meetings)
rails g scaffold meeting dni:integer name:string lastname:string email:string cel:string date:datetime status:boolean

#Login
En la vista new de la sessión con devise, colocamos la maquetación correspondiente para el login


#Layout Login
Se creo un layout para el login desde los controladores se agrega la logica y desde la vista se creo un template

#Dashboard Interface (Backend)
~Crear una controlador nuevo para el dashboard~
rails g controller dashboard index

#Editar dashboard
~El layouyt está conectado con el nombre de usuario y el cerrar sesión~


