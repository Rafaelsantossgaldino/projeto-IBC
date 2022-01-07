Crud::Application.routes.draw do
  root "crud#index"


  get "/crud" , to: "crud#index"
end
