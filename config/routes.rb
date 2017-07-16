Rails.application.routes.draw do

  root 'pages#index'
  resources :pages
  get 'resume', to: 'pages#resume'
  get 'portfolio', to: 'pages#portfolio'
  get 'blog', to: 'pages#blog'
  get 'single', to: 'pages#single'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
  
end
