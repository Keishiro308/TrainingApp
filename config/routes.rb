Rails.application.routes.draw do
  get 'tasks/new' => 'tasks#new'
  post 'tasks/create' => 'tasks#create'
  delete 'tasks/:id/destroy' => 'tasks#destroy'
  get 'tasks/:id/edit' => 'tasks#edit'
  put 'tasks/:id/update' => 'tasks#update'

  devise_for :users
  get 'users/:id/:date' => 'users#date'
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'


end
