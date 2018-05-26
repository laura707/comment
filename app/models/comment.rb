class Comment < ApplicationRecord
    #댓글은 하나의 게시물에 속해있다. 
    #mypost데이터베이스랑 이런 관련이 있단 것
    belongs_to :mypost 
    #Mypost?? mypost??
end
