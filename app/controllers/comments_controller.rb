class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def index
    @topics =Topic.all.includes(:favorite_users)
    @comment = Comment.find_by(id:params[:id])
  end
  def create
    @comment =Comment.new(content:params[:content])


    @comment.save
    redirect_to topics_path
    #「redirect_to」から「render」へ変更
  end
end