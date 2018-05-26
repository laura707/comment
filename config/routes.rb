Rails.application.routes.draw do
  root 'home#index'
  
  get 'home/index'
  
  post 'home/create' #=>home#create로 액션이동

  get 'home/new' #=>home#new 
  
  get 'home/show/:showPost_id' => 'home#show' #:showPost_id를 home#show액션으로 보낼게용

  get 'home/edit/:editPost_id' => 'home#edit' #:editPost_id를 home@edit액션으로 보낼게용
  
  get 'home/update/:updatePost_id' => 'home#update'
  
  post 'home/delete/:deletePost_id' => 'home#delete' 
  #삭제 버튼 누를 때 post방식으로 보내기로 했으니까

  ###댓글 관련 라우트 처리  
  post 'comconts/create' #=> 'comconts#create'
  
  delete 'comconts/:comment_id' => 'comconts#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
