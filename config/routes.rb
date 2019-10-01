Rails.application.routes.draw do
  get 'guild/index'

  resources :guildapps

  root 'guild#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
