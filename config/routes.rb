Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  mount Attachinary::Engine => "/attachinary"

  get '/about', to: 'pages#about'

  devise_for :users
  root 'posts#index'
end
