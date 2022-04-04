Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users

  # Defines the root path route ("/")
  root "events#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events

end
