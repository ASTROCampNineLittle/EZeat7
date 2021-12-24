Rails.application.routes.draw do

devise_for :users, controllers: { 
  registrations: 'users/users',
}
resources :users, only: [:index, :show, :create]

root 'pages#index'
get 'search', to: 'pages#search'

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
resources :checks , only: [:index , :show]



end
