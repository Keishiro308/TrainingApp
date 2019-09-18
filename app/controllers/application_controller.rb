class ApplicationController < ActionController::Base
  @tasks = Task.all

end
