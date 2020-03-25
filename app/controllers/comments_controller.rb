class CommentsController < ApplicationController
  def new
  end
  def index
    @topics =Topic.all.includes(:favorite_users)
    
  end
  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save
    @comment.user_id = current_user.id
    render topics_path
    #「redirect_to」から「render」へ変更
  end
end