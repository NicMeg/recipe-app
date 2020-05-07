Rails.application.routes.draw do

  root to: "recipes#index"
  resources :recipes
  devise_for :users
  get '/my_recipes', to: 'recipes#my_recipes'
  
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
