Rails.application.routes.draw do

  root 'pages#index'

  get '/show' => 'pages#show', as: :show

end
