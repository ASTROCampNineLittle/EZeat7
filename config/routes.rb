Rails.application.routes.draw do

root 'pages#index'

resources :companies do
  resources :projects
  resources :stores
end

end
