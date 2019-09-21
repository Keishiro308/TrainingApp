class UsersController < ApplicationController
  def show
    @tasks = Task.where(user_id: params[:id])
  end
  def date
    # @tasks = Task.where("start_time LIKE?", "#{params[:date]}%")
    @tasks = Task.where(user_id: params[:id])
  end
end
