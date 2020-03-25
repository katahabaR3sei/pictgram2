class CommentsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new
  end

  def index
    @topics = Topic.all.includes(:favorite_users)
  end

  def create
    @comment = current_user.comments.new(
      content: params["comment"]["content"],
      topic_id: params[:topic_id],
      user_id: current_user.id
    )
    @comment.save
    redirect_to topics_path
  end
end