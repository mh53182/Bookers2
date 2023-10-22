Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => "homes#about",as: 'about'


  devise_for :users
  # ↑deviseを使用する際、URLに"users"を含むよ、の意

  resources :books, only: [:create, :index, :show, :update, :edit, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'

  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
