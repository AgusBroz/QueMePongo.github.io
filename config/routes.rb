Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    root to: 'landing#index'
    resources :prendas
    resources :guardarropas do
      resources :atuendos
    end

 

  # post 'prendas', to: 'prendas#create'
  # get 'prendas/new', to: 'prendas#new'
  # get 'prendas', to: 'prendas#index'
  # get 'prendas/:id', to: 'prendas#show'
  # get 'prendas/:id/edit', to:'prendas#edit'
  # delete 'prendas/:id', to: 'prendas#destroy'
  # put 'prendas/:id', to: 'prendas#update'
  # patch 'prendas/:id', to: 'prendas#update'

end
