Rails.application.routes.draw do
  devise_for :users
  devise_for :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'statics#home'

  get '/records/', to: 'records#new'
end
