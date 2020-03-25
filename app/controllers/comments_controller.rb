class CommentsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new
  end

  def index
    @topics = Topic.all.includes(:favorite_users)
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new(
      content: params["comment"]["content"],
      user_id: current_user.id
    )
    @comment.save
    redirect_to topics_path
  end
end