Rails.application.routes.draw do
  resources :policy_extensions
  root 'policy_extensions/index'
  get 'account_resolutions/new'

  get 'account_resolutions/create'

  resources :policies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
