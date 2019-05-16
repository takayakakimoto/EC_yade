Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  post 'products/:product_id/add_to_baskets', to: 'add_to_baskets#create'
  post 'products/:product_id/delete_to_baskets', to: 'delete_to_baskets#create'

  resources :products
    scope module: :products do
      resources :add_to_basket, only: %i(create)
      resources :delete_in_baskets, only: %i(create)
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
