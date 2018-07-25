Rails.application.routes.draw do
  root to: 'lotteries#index'

  resources :lotteries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
