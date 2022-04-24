class DelayedJobsController < ApplicationController
  before_action :set_delayed_job, only: %i[ show update destroy ]

  # GET /delayed_jobs
  def index
    @delayed_jobs = DelayedJob.all

    render json: @delayed_jobs
  end

  # GET /delayed_jobs/1
  def show
    render json: @delayed_job
  end

  # POST /delayed_jobs
  def create
    @delayed_job = DelayedJob.new(delayed_job_params)

    if @delayed_job.save
      render json: @delayed_job, status: :created, location: @delayed_job
    else
      render json: @delayed_job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delayed_jobs/1
  def update
    if @delayed_job.update(delayed_job_params)
      render json: @delayed_job
    else
      render json: @delayed_job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delayed_jobs/1
  def destroy
    @delayed_job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delayed_job
      @delayed_job = DelayedJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delayed_job_params
      params.require(:delayed_job).permit(:priority, :attempts, :handler, :last_error, :run_at, :locked_at, :failed_at, :locked_by, :queue)
    end
end
