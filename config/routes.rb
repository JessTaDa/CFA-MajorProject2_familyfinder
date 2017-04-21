Rails.application.routes.draw do



# redirects signed in user to user profile
devise_scope :user do
  authenticated :user do
    root 'pages#profile', as: :authenticated_person
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  get 'people/newuserprofile'

  get 'pages/home'

  get 'pages/profile'

  get 'pages/results_mother', to: 'pages#results_mother' # to get pages_results_path in rake routes

  get 'pages/person'

  root 'pages#home' #not really necessary



  resources :people
  # resources :registrations

  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#get '/user/new' => 'persons#new', as: 'new_person'

end
