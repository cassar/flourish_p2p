Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :advertisements, only: :index 

  root "advertisements#index"
end
