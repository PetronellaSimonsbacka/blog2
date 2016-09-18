Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  resources :posts do
    resources :comments
  end  
end
