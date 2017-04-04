Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'restos', to: 'restos#index'
  post 'restos', to: 'restos#create'
  get 'restos/:id', to: 'restos#show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # a form for creating new
  get "restaurants/new", to: "restaurants#new"
  #second request use post to send params
  post "restaurants/new", to: "restaurants#create"
  #read all restaurnts
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show"
  #update witha form
  get "restaurants/:id/edit", to: "restaurant#edit"
  patch "restaurants/:id", to: "restaurants#update"
  #delete
  delete "restaurants/:id", to: "restaurants#destroy"
  # same as above
  resources :restaurants
end
