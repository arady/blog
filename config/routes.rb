Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/index'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'

  root 'pages#index'


  resources :posts

end
