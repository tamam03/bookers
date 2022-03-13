Rails.application.routes.draw do
  root :to => 'books#top'
  # 規定のURlに変更予定
  get 'books/new' =>'lists#new'
  post 'lists' => 'lists#create'
  get 'lists/index' => 'lists#index'
  get 'books/:id' => 'lists#show',as:'list'
  get 'books/:id/edit' => 'lists#edit',as:'edit_list'
  patch 'books/:id' => 'lists#update',as:'update_list'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
