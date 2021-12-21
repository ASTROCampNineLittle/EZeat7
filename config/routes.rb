Rails.application.routes.draw do

devise_for :companies
devise_for :users

root 'pages#index'

resources :companies do
  resources :projects
  resources :stores
end

end
