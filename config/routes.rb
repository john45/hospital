Rails.application.routes.draw do

  post '/events/:calendar_id', to: 'google_auths#new_event', as: 'new_event', calendar_id: /[^\/]+/
  get '/events/:calendar_id', to: 'google_auths#events', as: 'events', calendar_id: /[^\/]+/
  get '/redirect', to: 'google_auths#redirect', as: 'redirect'
  get '/callback', to: 'google_auths#callback', as: 'callback'
  get '/calendars', to: 'google_auths#calendars', as: 'calendars'
  get 'patients/show'

  get 'patients/edit'

  root 'statics#home'

  devise_for :users
  devise_for :patients

  get '/records/get_doctors', to: 'records#get_doctors'
  get '/records/show_doctor_event', to: 'records#show_doctor_event'
  get '/records/', to: 'records#index'

  resources :records
  resources :patients
end
