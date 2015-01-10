Rails.application.routes.draw do

  get 'sessions/new'

  resource :session

  get "signup" => "users#new"
  resources :users

  root "events#index"
  # get "events" => "events#index"
  # get "events/new" => "events#new"
  # get "events/:id" => "events#show", as: 'event'
  # get "events/:id/edit" => "events#edit", as: 'edit_event'
  # patch "events/:id" => "events#update"
  resources :events do
    resources :registrations
  end
end