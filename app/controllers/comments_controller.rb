class CommentsController < ApplicationController
  def index
    @comment = Comment.find_by(id:params[:id])
  end
  def create
    @comment =Comment.new(content:params[:content])
    @comment.save
    redirect_to topics_path, success:"コメントしました"
    #「redirect_to」から「render」へ変更
  end
end
