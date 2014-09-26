Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users, :only => [:create, :index]
  resources :tips, :only => [:create, :index]
end
