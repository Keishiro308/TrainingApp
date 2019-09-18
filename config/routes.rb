Rails.application.routes.draw do
  get 'tasks/new' => 'tasks#new'
  post 'tasks/create' => 'tasks#create'

  devise_for :users
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'


end
