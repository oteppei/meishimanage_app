Rails.application.routes.draw do
  get 'cards/new'
  # Users controller
  get 'signup' => "users#new"
  post "/users/create" => "users#create"
  get "/users/:id/edit" => "users#edit"
  get "users/:id/" => "users#show"
  get "/login" => "users#login_form"
  post "login" => "users#login"
  post "/logout" => "users#logout"

  # Home controller
  get '/' => "home#top"
  get 'about' => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
