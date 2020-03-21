Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api do
  get "/funcionarios" => "workers#index"
  get "/funcionarios/:id" => "workers#show"
  post "funcionarios/" => "workers#create"
  patch "/funcionarios/:id" => "workers#update"
  delete "/funcionarios/:id" => "workers#destroy"
  end
end
