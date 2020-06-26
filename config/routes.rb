Rails.application.routes.draw do
  devise_for :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 

    root to: 'landing#index'
    resources :prendas
    resources :guardarropas do
      resources :atuendos
      get 'atuendo-aleatorio', to: 'atuendos#show_random'
    end

    get 'usuarios', to: 'usuarios#index'
    
  # post 'prendas', to: 'prendas#create'
  # get 'prendas/new', to: 'prendas#new'
  # get 'prendas', to: 'prendas#index'
  # get 'prendas/:id', to: 'prendas#show'
  # get 'prendas/:id/edit', to:'prendas#edit'
  # delete 'prendas/:id', to: 'prendas#destroy'
  # put 'prendas/:id', to: 'prendas#update'
  # patch 'prendas/:id', to: 'prendas#update'

end
