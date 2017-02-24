class ProjectsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @projects = Project.all
    @projects = @projects.order(:end_date)
    @successfulprojects = 0
    @successfulpledges = 0
    @projects.each do |project|
      if Reward.joins(:pledges).where(project_id: project.id).sum(:dollar_amount) >= project.goal
        @successfulprojects += 1
        @successfulpledges += Reward.joins(:pledges).where(project_id: project.id).sum(:dollar_amount)
      end
    end
  end

  def show
    @project = Project.find(params[:id])
# <<<<<<< HEAD
    @update = Update.new
    @pledge = Pledge.new
    # @updates = Update.last(5)
    #
    # if Pledge.exists?(:id => params[:id])
    #   @pledge = Pledge.find(params[:id])
    # end
    @comment = Comment.new
# =======
    @total_pledge = @project.pledges.sum(:dollar_amount)
# >>>>>>> moneyPledged
  end

  def new
    @project = Project.new
    @project.rewards.build
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
   end

  private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, :image, rewards_attributes: [:dollar_amount, :description, :limit])
  end
end
