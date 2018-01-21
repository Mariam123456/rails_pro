Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', controllers: { registrations: "user_registrations" } }
  root 'simple_pages#index'
  resources :products do
  resources :comments
end
resources :users
  get 'simple_pages/product'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'
  get 'simple_pages/landing_page'

  post 'payments/create'
  get 'payments/create'
  
  post 'simple_pages/thank_you'
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'orders/create'
  mount ActionCable.server => '/cable'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
