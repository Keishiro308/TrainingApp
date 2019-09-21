class TasksController < ApplicationController
  def new
    @task = Task.new
    @task.start_time = Time.now
  end

  def create
    @task = Task.new(
      name: task_params[:name],
      sub_task: task_params[:sub_task],
      start_time: task_params[:start_time],
      end_time: task_params[:end_time],
      user_id: current_user.id,
      color: task_params[:color]
    )
    if @task.save
      flash[:notice] = '追加できました'
      redirect_to("/users/#{current_user.id}")
    else
      flash[:alert] = "追加できませんでした"
      render('tasks/new')
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    if @task.destroy
      flash[:notice] = "予定を削除しました"
      redirect_to("/users/#{current_user.id}")
    else
      flash[:alert] = "削除に失敗しました"
      redirect_to("/users/#{current_user.id}")
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    if @task.update(task_params)
      flash[:notice] = "予定を更新しました"
      redirect_to("/users/#{current_user.id}")
    else
      flash[:alert] = "更新に失敗しました"
      redirect_to("/users/#{current_user.id}")
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :sub_task, :user_id, :start_time, :end_time, :color)
  end
end
