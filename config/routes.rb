Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  mount Attachinary::Engine => "/attachinary"

  get "/about", to: "pages#about"
  resources :contacts, only: [:new, :create]

  devise_for :users
  root "posts#index"
end
