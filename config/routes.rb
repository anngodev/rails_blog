Rails.application.routes.draw do
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # when user submits a get request from url, take them to the index action of the home controller
	get "/", to: "home#index"

	get "/sign_in", to: "home#sign_in"

	get "/edit", to: "home#edit"

	resources :users
 end
