class ComcontsController < ApplicationController
  def create
    #실제로 댓글 생성하는 역할 수행 - 우리 눈에는 안 보임
    com = Comment.new
    com.content_2 = params[:comment_content]
    com.mypost_id = params[:showPost_id] #com.게시판 모델명_id = params[:show페이지의 name값]
    com.save
    
    showId = params[:showPost_id] #String타입. 즉, 문자열
    
    redirect_to "/home/show/#{showId.to_i}" #각 게시글의 id를 가져와야함
    #redirect_to "/home/show/#{showId}" #integer, 즉, 숫자로 바꿔주기
    #redirect_to "/home/show/3" #뒤로 가기. 이렇게 3만 적으면 3번째 게시글로 돌아감
  end

  def destroy #꼭 delete말고 destroy로 해줄 것!! 안 그러면 route처리가 안 돼요ㅠㅠ
    com_2 = Comment.find(params[:comment_id]) #몇 번째 댓글인지 값 가져오기
    com_2.destroy
    
    #showId_2 = params[:comment_id] 안 됨. 몇 번째 댓글인지를 가져오는 거니까
    
    redirect_to "/home/show/#{com_2.mypost_id}" #뒤로 가기 
    #{com_2.mypost_id} : 해당 댓글이 어느 게시글 번호의 댓글인지
    #실제로 댓글 삭제하는 역할 수행 - 우리 눈에는 안 보임
  end
end
