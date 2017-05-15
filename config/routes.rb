Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user_registrations" }

  resources :users

  resources :products do
    resources :comments
  end

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  root 'static_pages#landing_page'

  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
