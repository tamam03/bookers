Rails.application.routes.draw do
  root :to => 'books#top'
  get 'books/new' =>'lists#new'
  post 'books' => 'lists#create'
  get 'books' => 'lists#index'
  get 'books/:id' => 'lists#show',as:'list'
  get 'books/:id/edit' => 'lists#edit',as:'edit_list'
  patch 'books/:id' => 'lists#update',as:'update_list'
  delete 'books/:id' => 'lists#destroy',as:'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
