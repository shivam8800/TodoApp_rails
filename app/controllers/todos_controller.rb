class TodosController < ApplicationController
    #this is for showing a form from which we can create a new todo
    def new
        @todo = Todo.new
    end
    #when we submite the form then we have to save data in database which is done by this function
    def create
        @todo = Todo.create(todos_params)
        if @todo.save
            #this is notice or message for knowing our data have saved or not
            flash[:notice] = "Todo was created successfully!"
            redirect_to todo_path(@todo)
        else
            #if the data would not save then we rerender the form page 
            render 'new'
        end
    end
    #when we submit the form then we directly reach detail page of a todo
    def show
        @todo = Todo.find(params[:id])
    end
    #when we have to update a todo then we have a new form page which render from this function
    def edit
        @todo = Todo.find(params[:id])
    end
    #after rendring page we have to update data in database
    def update
        @todo = Todo.find(params[:id])
        if @todo.update(todos_params)
            flash[:notice] = "Todo was successfully updated"
            redirect_to todo_path(@todo)
        else
            render 'edit'
        end
    end
    #for showing all data in a page means from this function we can see all todos
    def index
        @todo = Todo.all
    end
    #private function we only access in current class
    private
        #when we saved data to database then we required current information which would be used by rendring page so for that page we have to pass an argument of such information
        def todos_params
            params.require(:todo).permit(:name, :description)
        end
end