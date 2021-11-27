Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :clients do
    resources :comments, only: %i[new create edit destroy]
  end
end

