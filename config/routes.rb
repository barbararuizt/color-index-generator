Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "colors#index"

  resources :colors, only: [:index, :show, :new, :create, :destroy] do
  end
end
