Rails.application.routes.draw do
  get 'laptop/index'
  get 'desktop/index'
  get 'dashboard/index'
  devise_for :users
  # get 'welcome/index'
  get '/' => 'welcome#index' , as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :desktops
end
