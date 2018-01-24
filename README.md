#create a new todo resource

-Learn CRUD -database operations
-C -create, R -read, U -update, D -delete
-what is migration

-How do we communicate with database layer? -Through models
-we will need a todo model

-create a few Todo's

-Rails console

#data model schema
 -Creating Todos

 name - what kind of todo
 description - details of the todo

Now we have table but how to we intract with it -using models

-To create a todo:
    Initiate a new Todo object
    save the object to database

.new -> creates a new object, but does not save it to database
.create -> this will impact database right away as long as no errors means It's directly save into database

#Wrap section 1
-read about routes
-resources :todos what will it create?
-read about 1-to-many associations

#resources :todos
gives me all CRUD routes for the todos

#For a new Todo:
Initiate a new Todo instance variable

@todo1 = Todo.new
-instance variable
-this instance variable not just available in controller but also in our views 
-So we can initiate it at controller and access in our views

#Corresponding actions
new -form to create a new todo
submit to create - hits the database or gives an error

edit - form to edit an existing todo
submits to update - hits the database with patch or gives  an error

index
lists all todos

show
display an individual todo

delete
destroy a todo

flash

-we can access the url id from
-->Todo.find(params[:id])