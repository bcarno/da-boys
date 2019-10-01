Rails.application.routes.draw do
  get 'guild/index'

  devise_for :users

  resources :guildapps

  root 'guild#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: "devise/registrations#new"
end
