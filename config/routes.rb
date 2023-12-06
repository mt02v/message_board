Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :boards do
  resources :comments, only: [:create, :destroy]
end

root to: 'boards#index'
end

