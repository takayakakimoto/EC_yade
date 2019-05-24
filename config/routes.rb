Rails.application.routes.draw do
  get 'toppages/index'
  root to: 'products#index'
  devise_for :users
  resource :basket, only: %i(show)
  resource :charge, only: %i(create)
  resources :products do
    scope module: :products do
      resources :add_to_baskets, only: %i(create)
      resources :delete_in_baskets, only: %i(create)
    end
  end

  post 'products/:product_id/add_to_baskets', to: 'add_to_baskets#create'
  post 'products/:product_id/delete_in_baskets', to: 'delete_in_baskets#create'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
