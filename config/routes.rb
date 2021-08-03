Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #inicio
  get '' => "welcome#index"
  #users
  get "users" => "users#show"
  post "users/new" => "users#create"


  #login y session
  get "login" => "sessions#new"
  post "sessions/new/user" => "sessions#user_create"
  delete "sessions/destroy/user" => "sessions#user_destroy"

  delete '/logins/destroy' =>"sessions#destroy" , as: "logout"

end
