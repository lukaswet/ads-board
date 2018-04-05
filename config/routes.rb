Rails.application.routes.draw do
  # get 'pages/home'

  root to: "pages#home"

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registation'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
