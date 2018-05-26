class Mypost < ApplicationRecord
    #각각의 게시글은 n개의 댓글을 가질 수 있다
    has_many :comments 
    #Mypost has many comments(영문법 지켜서!!)
    #comments? Comments?
end
