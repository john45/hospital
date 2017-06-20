Rails.application.routes.draw do
  root 'statics#home'

  devise_for :users
  devise_for :patients

  get '/records/get_doctors', to: 'records#get_doctors'
  get '/records/show_doctor_event', to: 'records#show_doctor_event'

  get '/records/', to: 'records#index'
end
