Rails.application.routes.draw do

  root 'pages#index'

  get '/champion' => 'pages#champion', as: :champion

  get '/champions' => 'pages#champions', as: :champions

  get '/items' => 'pages#items', as: :items

  get '/item' => 'pages#item', as: :item

end
