class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to projects_url
    else
      render 'projects/new'
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:description, :project_id, :user_id)
  end
end
