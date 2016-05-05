Rails.application.routes.draw do
  root "statics#home"
  get "about" => "statics#about"
  get "contact" => "statics#contact"
  devise_for :users, path: "",
    path_names: {sign_in: "login", sign_out: "logout"}
    resources :posts, only: [:index, :new, :create]
    resources :reacts, only: [:new, :create]
end
