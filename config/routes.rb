Rails.application.routes.draw do

  get 'exhibits/levels'
  get 'exhibits/exhibit'
  get 'sessions/new'
  get 'users/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'levels' => 'exhibits#levels'
  get 'exhibit' => 'exhibits#exhibit'
  get 'exhibit/:id' => 'exhibits#exhibit', as: :exhibit_page
  get 'display' => 'exhibits#exhibit'
  get 'exhibits/:ex/display/:id' => 'exhibits#display', as: :display_page
  get 'signup' 	=> 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
end