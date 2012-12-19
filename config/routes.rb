CourseProject::Application.routes.draw do
  get 'sign_up', to: "users#new", :as => :sign_up
  resources :users, :only => [:create, :show]

  get 'sign_in', to: "sessions#new", :as => :sign_in
  post 'sign_in', to: "sessions#create"
  get 'log_out', to: "sessions#destroy", :as => :log_out

  #root to: "main#index"
  root to: "posts#index"
  resources :posts, :only => [:index, :show, :new, :create] do
    resources :comments, :only => :create
    resources :votes, :only => :create
  end

  resources :nodes, :only => :show
end
