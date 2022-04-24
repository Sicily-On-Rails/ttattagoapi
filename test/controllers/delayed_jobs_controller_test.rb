require "test_helper"

class DelayedJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delayed_job = delayed_jobs(:one)
  end

  test "should get index" do
    get delayed_jobs_url, as: :json
    assert_response :success
  end

  test "should create delayed_job" do
    assert_difference("DelayedJob.count") do
      post delayed_jobs_url, params: { delayed_job: { attempts: @delayed_job.attempts, failed_at: @delayed_job.failed_at, handler: @delayed_job.handler, last_error: @delayed_job.last_error, locked_at: @delayed_job.locked_at, locked_by: @delayed_job.locked_by, priority: @delayed_job.priority, queue: @delayed_job.queue, run_at: @delayed_job.run_at } }, as: :json
    end

    assert_response :created
  end

  test "should show delayed_job" do
    get delayed_job_url(@delayed_job), as: :json
    assert_response :success
  end

  test "should update delayed_job" do
    patch delayed_job_url(@delayed_job), params: { delayed_job: { attempts: @delayed_job.attempts, failed_at: @delayed_job.failed_at, handler: @delayed_job.handler, last_error: @delayed_job.last_error, locked_at: @delayed_job.locked_at, locked_by: @delayed_job.locked_by, priority: @delayed_job.priority, queue: @delayed_job.queue, run_at: @delayed_job.run_at } }, as: :json
    assert_response :success
  end

  test "should destroy delayed_job" do
    assert_difference("DelayedJob.count", -1) do
      delete delayed_job_url(@delayed_job), as: :json
    end

    assert_response :no_content
  end
end
