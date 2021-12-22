Rails.application.routes.draw do


devise_for :companies
devise_for :users

root 'pages#index'

namespace :backend do
  resources :companies do
    resources :stores do
      resources :projects do
        resources :offers
      end
    end
  end
end


resources :stores

end
