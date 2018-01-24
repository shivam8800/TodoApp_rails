Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
  #from this we got the following routes
  #todos GET      /todos(.:format)          todos#index
  #POST           /todos(.:format)          todos#create---->post data to database after submiting form
  #new_todo GET   /todos/new(.:format)      todos#new------>this is the form of creating new todos
  #edit_todo GET  /todos/:id/edit(.:format) todos#edit
  #todo GET       /todos/:id(.:format)      todos#show
  #PATCH          /todos/:id(.:format)      todos#update
  #PUT            /todos/:id(.:format)      todos#update
  #DELETE         /todos/:id(.:format)      todos#destroy
 
end
