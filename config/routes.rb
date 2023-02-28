Rails.application.routes.draw do
  get 'video/landing'
  get 'video/index'
  get 'video/screenshare'
  get 'video/name'
  get 'video/chat'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'video#landing'
  get '/party', to: 'video#index'
  get '/screenshare', to: 'video#screenshare'
  post '/name', to: 'video#name'
  post '/chat/send', to: 'video#chat'
end
