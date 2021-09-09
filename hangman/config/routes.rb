Rails.application.routes.draw do
  get '/game', to: 'game#index'
  post '/guess', to: 'game#guess'
end
