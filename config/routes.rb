Rails.application.routes.draw do

devise_for :users, controllers: { 
  registrations: 'users/users',
}
resources :users, only: [:index, :show, :create]

root 'pages#index'
get 'search', to: 'pages#search'
get 'myorder', to: 'pages#myorder'
get 'verification', to: 'pages#verification'
get 'channel', to: 'pages#channel'

namespace :backend do
  shallow do
    resources :companies do
      shallow do
        resources :stores, except: [:show ] do
          resources :dishes do
            # resources :offers
          end
        end
      end
    end
  end
end


resources :stores
resources :offers , only: [:index , :show] 
resources :checks , only: [:index , :show]
resources :payments , only: [:index, :new] do
  post :confirm
end



end
