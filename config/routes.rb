Rails.application.routes.draw do
  get 'laptops/index'
  get 'dashboard/index'
  devise_for :users
  get '/' => 'welcome#index' , as: 'home'
  resources :desktops
  resources :laptops
end
