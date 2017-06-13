Rails.application.routes.draw do
  root 'statics#home'

  devise_for :users
  devise_for :patients

  get '/records/get_doctors', to: 'records#get_doctors'

  get '/records/', to: 'records#new'
end
