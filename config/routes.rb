Rails.application.routes.draw do




  root to:'session#new'

  get '/login'  => 'session#new' # login form
  post '/login' => 'session#create' # check credentials and attempt login (set session)
  delete '/login' => 'session#destroy' # log out destroy the session

  resources :users
  resources :trips do
    resources :days
  end

  post "/trips/:trip_id/days/:id/add_place/:place_id" => "days#add_place", as: 'add_place_to_day'

  #maybe try the following url:
  # get '/trips/:id/days/new' => 'days#new'
  get '/trips/:id/invite' => 'trips#search_user'
  post '/trips/:id/invite' => 'trips#invite_user'

  get '/trips/:trip_id/days/:id/add' => 'days#add_new_place'
  get '/trips/:trip_id/days/:id/add/search_res' => 'days#search_res'

  resources :places

  get'trips/:trip_id/days/:id/add/new' => 'days#create_and_add_place'


  resources :transportations
  resources :accomodations


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
