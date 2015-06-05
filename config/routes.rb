Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :perfiles
  
end
