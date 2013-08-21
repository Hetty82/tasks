class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    Task.create params[:task]
    redirect_to :back
  end

end
