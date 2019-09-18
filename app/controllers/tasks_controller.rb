class TasksController < ApplicationController
  def new
    @task = Task.new
    @task.start_time = Time.now
  end

  def create
    @task = Task.new(
      name: task_params[:name],
      start_time: task_params[:start_time],
      end_time: task_params[:end_time],
      user_id: current_user.id
    )
    if @task.save
      redirect_to("/")
    else
      flash[:notice] = "追加できませんでした"
      render('task/new')
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :user_id, :start_time, :end_time)
  end
end
