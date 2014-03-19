MonkeyBusiness::Application.routes.draw do
  resources :chatmessages

  resources :timelines

  resources :tasks

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  # file: config/routes.rb
  namespace :api do
    devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end
    get 'tasks' => 'tasks#index', :as => 'tasks'
    get 'timeline' => 'timelines#index', :as => 'timeline'
    post 'checkin' => 'timelines#create', :as => 'checkin'
    post 'timeline' => 'timelines#update', :as => 'timeline_update'
    delete 'timeline' => 'timelines#destroy', :as => 'timeline_delete'
    post 'post' => 'chatmessages#create', :as => 'post'
    get 'chatmessages' => 'chatmessages#index', :as => 'chatmessages'
    get 'live' => 'live_stats#index', :as => 'live'
  end

end
