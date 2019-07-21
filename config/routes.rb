Rails.application.routes.draw do
  namespace :admin do

    get '/' => 'homes#index'

    resources :users, only: [:index, :show]

    resources :posts, only: [:index, :show]

    resources :categories, only: [:show]

  end

  namespace :user do

    get '/' => 'homes#index'

    get '/about' => 'homes#about', as: 'about'

    resources :users, only: [:show, :edit, :update, :destroy]

    resources :posts do
      resource :comments, only: [:create]
    end


    resources :categories, only: [:show]

  end

  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
