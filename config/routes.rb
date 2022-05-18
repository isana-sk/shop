Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'home#index'
    resources :product_categories
    resources :products
    devise_for :users
    get '/home/:id', to: 'home#account'
    patch '/home', to: 'home#update'
    put '/home', to: 'home#update'
    get '/orders/:id', to: 'orders#index'
    post '/orders', to: 'orders#create'
    get '/orders', to: 'orders#show'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
