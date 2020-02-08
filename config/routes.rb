Rails.application.routes.draw do
  get 'unlikes/index'
  post "unlikes/:opinion_id/create" => "unlikes#create"

  get 'likes/index'
  post "likes/:opinion_id/create" => "likes#create"

  get 'opinions/index'
  get "opinions/:topic_id" =>"opinions#show"
  get 'opinions/:topic_id/new' => "opinions#new"
  post 'opinions/:topic_id/create' => "opinions#create"

  get 'topics/index'
  get "topics/:room_id" => "topics#show"
  get 'topics/:room_id/new' => "topics#new"
  post 'topics/:room_id/create' => "topics#create"

  get 'rooms/index'
  get 'rooms/new' => "rooms#new"
  post 'rooms/create' => "rooms#create"
  get "rooms/login" => "rooms#login_form"
  post 'rooms/login' => "rooms#login"

  get "/" => "rooms#top"
end
