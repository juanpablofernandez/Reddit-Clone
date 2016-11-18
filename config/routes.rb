Rails.application.routes.draw do

  resources :posts, only: [ :index, :new, :create, :show, :update]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit
  put 'posts/:id', to: 'posts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

end
