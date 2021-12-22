Rails.application.routes.draw do


devise_for :companies
devise_for :users

root 'pages#index'
get 'search', to: 'pages#search'

resources :companies do
  resources :projects
  resources :stores
end

resources :stores
resources :offers , only: [:index , :show] 
resources :checks , only: [:index , :show]
resources :payment , only: [:show] 

end
