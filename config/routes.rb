Rails.application.routes.draw do
  post "/users/login", to:"users#login"
  post "/users/register", to:"users#create"
  get "/users/keepUserLoggedIn", to: "users#keepUserLoggedIn"
  patch "/users/update/username", to:"users#username"
  patch "/users/update/email", to:"users#email"
  patch "/users/update/bio", to:"users#bio"
  patch "/users/update/profile_img", to:"users#profile_img"



  post "/lists/add", to: "lists#new"

  delete "/tasks/delete", to: "tasks#destroy"
  patch "tasks/update", to: "tasks#update"
end
