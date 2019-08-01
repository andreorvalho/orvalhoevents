Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/fuegofest', to: 'home#index'

  root 'home#index'
  get "*path" => redirect("/fuegofest")
end
