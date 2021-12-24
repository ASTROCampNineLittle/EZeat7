Rails.application.routes.draw do

devise_for :users, controllers: { users: 'users/profile' }
resources :users

namespace :users do
  resources :profile, only: [:show ] do
  end
end

root 'pages#index'
get 'search', to: 'pages#search'
get 'myorder', to: 'pages#myorder'
get 'verification', to: 'pages#verification'
get 'channel', to: 'pages#channel'

namespace :backend do
  shallow do
    resources :companies do
      resources :stores, except: [:show ] do
      #   resources :projects do
      #     resources :offers
      #   end
      end
    end
  end
end


resources :stores
resources :offers , only: [:index , :show] 
resources :checks , only: [:index , :show, :create]
resources :payments , only: [:index, :new] 

end
