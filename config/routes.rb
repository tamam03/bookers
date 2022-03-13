Rails.application.routes.draw do
  root :to => 'books#top'
  # 規定のURlに変更予定
  get 'lists/new' =>'lists#new'
  post 'lists' => 'lists#create'
  get 'lists/index' => 'lists#index'
  get 'lists/:id' => 'lists#show',as:'list'
  get 'lists/edit' => 'lists#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
