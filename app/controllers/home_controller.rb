class HomeController < ApplicationController
  def index #메인페이지
    @post_all = Mypost.all
    #글을 최신순으로 보여주고 싶다면 Mypost.all.order("id desc")-글을 id값이 내림차순 이 순서대로 보여지게 할거야
    #반대는 Mypost.all.order("id aesc")-글을 오름차순으로 정렬(default값)
  end

  def show #게시글 하나씩 보여주기
    #내가 갖고 있는 정보는 show_id!!
    @showPost = Mypost.find(params[:showPost_id]) #Mypost.find(1) 과 같은 기능
  end 
  
  def create #게시글 생성하기 기능
    post = Mypost.new
    post.Title = params[:post_title] #게시글 작성할 때 제목으로 쓴 거는 Title행에다 저장
    post.Content = params[:post_content] #게시글 작성할 때 내용으로 쓴 거는 Content행에다 저장
    post.save
    
    redirect_to '/home/index' #생성한 후에는 메인 페이지로 갈게 #redirect_to :back 다시 뒤로 돌아가기
  end
 
  def new  #게시글 작성하는 곳 #아무 기능 없음-액션과 똑같은 이름의 뷰 파일(new.html.erb)로 넘어감
  
  end
  
  def edit #게시글 편집하는 곳
    @upDatePost = Mypost.find(params[:editPost_id]) #몇 번째 게시글을 수정할 지 찾아올게
  end
  
  def update #게시글 수정 기능
    upDate = Mypost.find(params[:updatePost_id]) #몇 번째 게시판을 수정할 것인지 정보 가져옴
    upDate.Title = params[:post_title2]
    upDate.Content = params[:post_content2]
    upDate.save
    
    redirect_to '/home/index' #수정한 후에는 메인 페이지로 갈게
  end
  
  def delete #게시글 삭제 기능
    delPost = Mypost.find(params[:deletePost_id]) #몇 번째 게시글인지 찾아올게. id는 레일즈가 부여한 값
    delPost.destroy #찾아서 삭제할게
    #Post.destroy_all 라고 써주면 모든 게시글이 삭제
    redirect_to '/home/index' #삭제한 후에 메인페이지로 갈게
  end
end
