Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "todo_lists#index" #Home

  resources :todo_lists do
    resources :todo_items
  end

end
