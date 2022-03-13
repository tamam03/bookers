Rails.application.routes.draw do
  # 規定のURlに変更予定
  get '/' => 'homes#top'
  get 'lists/new' =>'lists#new'
  post 'lists' => 'lists#create'
  get 'lists/index' => 'lists#index'
  get 'lists/show' =>'lists#show'
  get 'lists/edit' => 'lists#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
