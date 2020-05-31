Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :prendas
  resources :guardarropas
  root to: 'landing#index'

  # post 'prendas', to: 'prendas#create'
  # get 'prendas/new', to: 'prendas#new'
  # get 'prendas', to: 'prendas#index'
  # get 'prendas/:id', to: 'prendas#show'
  # get 'prendas/:id/edit', to:'prendas#edit'
  # delete 'prendas/:id', to: 'prendas#destroy'
  # put 'prendas/:id', to: 'prendas#update'
  # patch 'prendas/:id', to: 'prendas#update'

end
