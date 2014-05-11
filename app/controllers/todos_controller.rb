class TodosController < ApplicationController

  def index
    @todos =  Todo.all.order(:created_at => :asc)
    render 'todos/index'
  end

	def new
	end

  def create
  	@todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved'
  end

	def show
		@todo = Todo.find(params[:id])
    # render
    # redirect_to @todo, notice: 'Your new TODO was saved'
  end


private

  def todo_params
    params.require(:todo).permit(:description)
  end

  

end