Rails.application.routes.draw do
  resources :sites
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sites#index"
end
