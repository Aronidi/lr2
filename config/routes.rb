Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/index'
  get 'main/index'
  resources :hotels #стать сайта
  root 'main#index'
end
