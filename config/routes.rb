Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'

  get 'destinations/index'

  get 'destinations/show'

  get 'destinations/new'

  get 'destinations/create'

  get 'destinations/edit'

  get 'destinations/update'

  get 'destinations/destroy'

  get 'bloggers/index'

  get 'bloggers/show'

  get 'bloggers/new'

  get 'bloggers/create'

  get 'bloggers/edit'

  get 'bloggers/update'

  get 'bloggers/destroy'

  resources :bloggers
  resources :destinations
  resources :posts

  root 'destinations#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
