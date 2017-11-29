class ApplicationJob < ActiveJob::Base
	before_action :set_job, only: [:destroy, :edit, :update, :show]

  def index
    @job = current_user.jobs
  end

  def new
    @jobs = current_user.jobs.new
  end

  def show
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      flash.now[:error] = "S my D from B"
      render :new
    end
end
