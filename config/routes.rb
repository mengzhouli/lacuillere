Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'restos', to: 'restos#index'
  post 'restos', to: 'restos#create'
  get 'restos/:id', to: 'restos#show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
