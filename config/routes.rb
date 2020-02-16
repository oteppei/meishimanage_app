Rails.application.routes.draw do
  # Users controller
  get '/new' => "users#new"
  post "/users/create" => "users#create"

  # Home controller
  get '/' => "home#top"
  get 'about' => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
