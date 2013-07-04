PoliticalKickstarter::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  root :to => "campaigns#index"
  resources :campaigns
  resources :users, only: [:index, :show]

end
