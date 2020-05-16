Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #resources :prendas

  get 'prendas/new', to: 'prendas#new'
  get 'prendas', to: 'prendas#index'
  get 'prendas/:id', to: 'prendas#show'
  get 'prendas/:id/edit', to:'prendas#edit'
  delete 'prendas/:id', to: 'prendas#destroy'
  put 'prendas/:id', to: 'prendas#update'
  patch 'prendas/:id', to: 'prendas#update'
  post 'prendas', to: 'prendas#create'

end
