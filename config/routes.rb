Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new", as: :task_new
  get "/tasks/:id", to: "tasks#show", as: :task
  post "/tasks", to: "tasks#create"
  get "/tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "/tasks/:id", to: "tasks#update"
  delete "/tasks/:id", to: "tasks#destroy"
end
