Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/fuegofest', to: 'home#index'

  root 'home#index'
  get "*path" => redirect("/fuegofest")
end
