Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :images, only: [:index]
    resources :items, only: [:show]
    resources :cart_items, only: [:create, :index, :destroy, :update]
    post "items/search", to: 'items#search'
  end

  root "static_pages#root"
end
