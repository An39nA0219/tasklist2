Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'tasks', to:'tasks#index'
  get 'tasks/:id', to:'tasks#show'
  get 'tasks/new', to:'tasks#new'
  post 'tasks', to:'tasks#create'
  get 'tasks/:id/edit', to:'tasks#edit'
  put 'tasks/:id', to:'tasks#update'
  destroy 'tasks/:id', to:'tasks#destroy'
  
  #コントローラーが複数形なので、複数形にすること
  #postは新しく作る、putは更新
  #post,putなどを使えば、URLにcreateとかupdate不要なので省略する
  #これらを簡単に書くとresources :tasksとなる
  
end
