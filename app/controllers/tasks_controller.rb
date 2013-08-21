class TasksController < ApplicationController

  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    Task.create (task_params)
    # redirect_to :back
    render :text => params.inspect
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

end
