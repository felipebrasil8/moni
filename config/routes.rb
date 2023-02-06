Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  get '/net', to: 'net#index'

  get '/http', to: 'http#index'
end
