Rails.application.routes.draw do
  get '/about', to: 'pages#about'
  resources :posts
  root 'pages#home'
end
