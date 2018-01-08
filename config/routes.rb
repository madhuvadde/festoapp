Rails.application.routes.draw do
  devise_for :users
	root 'fests#index'
  resources :tasks
  resources :registrations
  resources :events
	resources :fests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
