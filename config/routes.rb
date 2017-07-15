Rails.application.routes.draw do

  root 'pages#index'
  resources :pages
  get 'resume', to: 'pages#resume'
  get 'portfolio', to: 'pages#portfolio'
  get 'blog', to: 'pages#blog'
  get 'contact', to: 'pages#contact'
  get 'single', to: 'pages#single'

  get 'message', to: 'messages#new', as: 'message'
  post 'message', to: 'messages#create'
  
end
