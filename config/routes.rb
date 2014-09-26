Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users, :only => [:create]
  resources :tips, :only => [:create]
end
