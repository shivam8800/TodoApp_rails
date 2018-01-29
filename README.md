#Topic to be discuss
-Gemfile
-rubygems.org
-database.yml file
-app folder
-class names
-snake case & camel case
-naming of classes
-we will write everything out, create files, no generater
-bundler

#Full of magic !!!

Write everything out - so we understand everything

Migrations -> these are tracked by file name


#M V C

Migrations - files that we used to create and update database
Class - class a collection of methods or collections of functionality

articles_controller -> snake case
ApplicationController -> camel case


#DEPLOY APPLICATION  TO PRODUCTION

In Development - You have to  start a local webserver in order to access the  application form the web/browser

In Production - you want to have to webserver running 24/7 so the web application can be accessed at all times

In development - the database can be updated at will by test data, signups etc, you can also delete all data and restart 

In production - you want to keep the production database clean, you want only production data and only some initial test data in there

we will use Heruko as our production hosting service, Since it's free for starter apps and easy to get started with


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