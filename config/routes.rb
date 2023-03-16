Rails.application.routes.draw do
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/:id" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"
  post "/sessions" => "sessions#create"
end
