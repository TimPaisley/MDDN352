Rails.application.routes.draw do

  get 'exhibits/levels'

  get 'exhibits/exhibit'

  get 'exhibits/display'

  get 'sessions/new'

  get 'users/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'levels' => 'exhibits#levels'
  get 'exhibit' => 'exhibits#exhibit'
  get 'display' => 'exhibits#exhibit'
  get 'display/:id' => 'exhibits#display'
  get 'signup' 	=> 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
end