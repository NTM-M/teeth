Rails.application.routes.draw do
  namespace :admin do

    resources :users, only: [:index, :show]

    resources :posts, only: [:index, :show]

    resources :categories, only: [:show]

  end

  namespace :user do

    resources :users, only: [:show, :edit, :update, :destroy]

    resources :posts

    resources :comments, only: [:create, :destroy]

    resources :categories, only: [:show]

    resources :bookmarks, only: [:create, :destroy]

  end

  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
