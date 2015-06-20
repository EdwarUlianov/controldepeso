Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :perfiles
  resources :usuarios
  
end
