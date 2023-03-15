Rails.application.routes.draw do
  get "/students" => "students#index"
  post "/students" => "students#create"
end
