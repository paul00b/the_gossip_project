Rails.application.routes.draw do
  get 'gossip/new', to: 'gossip#new', as: 'gossip_new'
  get 'gossip/:id', to: 'gossip#show', as: 'gossip'

  post 'gossip/new', to: 'gossip#create', as: 'gossip_create'

  get 'gossip/edit/:id', to: 'gossip#edit', as: 'gossip_edit'
  post 'gossip/edit/:id', to: 'gossip#modify', as: 'modify'

  get '/all', to: 'gossip#all', as: 'all'

  get '/delete', to: 'gossip#delete', as: 'delete'
  delete '/destroy', to: 'gossip#destroy', as: 'destroy'
  
  root 'static_pages#home'
  resources :static_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
