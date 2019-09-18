class UsersController < ApplicationController
  def show
    @tasks = Task.where(user_id: params[:id])
  end
end
