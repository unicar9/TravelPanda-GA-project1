Rails.application.routes.draw do




  root to:'session#new'

  get '/login'  => 'session#new' # login form
  post '/login' => 'session#create' # check credentials and attempt login (set session)
  delete '/login' => 'session#destroy' # log out destroy the session

  resources :users
  resources :trips do
    resources :days
  end
  #maybe try the following url:
  # get '/trips/:id/days/new' => 'days#new'


  resources :places
  resources :transportations
  resources :accomodations


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
