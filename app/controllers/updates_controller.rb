class UpdatesController < ApplicationController
  def create
    @update = Update.new(update_params)

    if @update.save
      redirect_to projects_url
    else
      render 'projects/new'
    end
  end
  private
  def update_params
    params.require(:update).permit(:title, :description, :project_id)
  end
end
