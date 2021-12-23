Rails.application.routes.draw do


devise_for :companies
devise_for :users

root 'pages#index'
get 'search', to: 'pages#search'

namespace :backend do
  shallow do
    resources :companies do
      resources :stores do
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
