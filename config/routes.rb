Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  resources :tasks
  
=begin
  
  get 'tasks/:id', to: 'tasks#show'
  post 'tasks', to: 'tasks#create'
  put 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id/edit', to: 'tasks#edit'
  
  #コントローラーが複数形なので、複数形にすること
  #postは新しく作る、putは更新
  #post,putなどを使えば、URLにcreateとかupdate不要なので省略する
  #これらを簡単に書くとresources :tasksとなる
=end
end
