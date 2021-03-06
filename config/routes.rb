Rails.application.routes.draw do
  resources :todos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "todos#index"
  get "stream", action: :stream, controller: :todos
  resources :todos do
    get :stream, on: :member
  end
end
