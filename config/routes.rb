Rails.application.routes.draw do
##override the default routes
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
####### 

  root 'pages#home'

  # get 'pages/about'
  get 'about', to: 'pages#about'
  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
