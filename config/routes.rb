CourseProject::Application.routes.draw do
  #root to: "main#index"
  root to: "posts#index"
  resources :posts, :only => [:index, :show] do
    resources :comments, :only => :create
  end
end
