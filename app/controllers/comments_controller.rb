class CommentsController < ApplicationController
  def index
    @comment = Comment.find_by(id:params[:id])
  end
  def create
    @comment =Comment.new(content:params[:content])
    @comment.save
    render topics_path, success:"コメントしました"
  end
end
